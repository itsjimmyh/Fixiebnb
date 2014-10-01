class Request < ActiveRecord::Base
  STATUS_STATES = %w(APPROVE DENIED PENDING)

  validates :user_id,
            :listing_id,
            :start_date,
            :end_date,
            :status,
            presence: true

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

  private
  def assign_pending_status
    self.status ||= "PENDING"
  end



end
