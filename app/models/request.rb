class Request < ActiveRecord::Base
  STATUS_STATES = %w(APPROVED DENIED PENDING)

  validates :user_id,
            :listing_id,
            :start_date,
            :end_date,
            :status,
            presence: true

  validates :status, inclusion: STATUS_STATES
  validate :does_not_overlap_approved_request

  after_initialize :assign_pending_status

  belongs_to(
    :requester,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  belongs_to(
    :listing,
    class_name: "Listing",
    foreign_key: :listing_id,
    primary_key: :id
  )


  def approve!
    raise "not pending" unless self.status == "PENDING"
    self.status = "APPROVED"
    self.save!
    overlapping_pending_requests.update_all(status: "DENIED")
  end

  def approved?
    self.status == "APPROVED"
  end

  def denied?
    self.status == "DENIED"
  end

  def deny!
    self.status = "DENIED"
    self.save!
  end

  def pending?
    self.status == "PENDING"
  end

  private

  def assign_pending_status
    self.status ||= "PENDING"
  end

  def overlapping_requests
    Request
    .where("(:id IS NULL) OR (id != :id)", id: self.id)
    .where(user_id: user_id)
    .where(<<-SQL, start_date: start_date, end_date: end_date)
      ((start_date BETWEEN :start_date AND :end_date) OR
        (end_date BETWEEN :start_date AND :end_date)) OR
      ((:start_date BETWEEN start_date AND end_date) OR
        (:end_date BETWEEN start_date AND end_date))
    SQL
  end

  def overlapping_approved_requests
    overlapping_requests.where("status = 'APPROVED'")
  end

  def overlapping_pending_requests
    overlapping_requests.where("status = 'PENDING'")
  end

  def does_not_overlap_approved_request
    return if self.denied?

    unless overlapping_approved_requests.empty?
      errors[:base] <<
        "Request conflicts with existing approved request"
    end
  end
end
