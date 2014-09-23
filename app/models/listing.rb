# == Schema Information
#
# Table name: listings
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  list_title :string(255)      not null
#  list_desc  :text             default("Please describe your ride"), not null
#  frame      :string(255)      default("frame"), not null
#  f_wheel    :string(255)      default("regular wheel"), not null
#  r_wheel    :string(255)      default("regular wheel"), not null
#  seat       :string(255)      default("regular"), not null
#  handlebars :string(255)      default("dropbars"), not null
#  brakes     :string(255)      default("regular"), not null
#  daily      :integer          default(5), not null
#  weekly     :integer          default(35), not null
#  rules      :text             default("Please do not purposefully damage the bike"), not null
#  deposit    :integer          default(100), not null
#  created_at :datetime
#  updated_at :datetime
#

class Listing < ActiveRecord::Base
  validates :user_id,
            :list_title,
            :list_desc,
            :frame,
            :f_wheel,
            :r_wheel,
            :seat,
            :handlebars,
            :brakes,
            :daily,
            :weekly,
            :rules,
            :deposit,
            presence: true

  

  def new
    @listing = Listing.new
    render json: @listing
  end

  def index
    @listings = Listing.all
    render json: @listings
  end

  def show
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def create
    @listing = Listing.new(listing_params)

    if @listing.save
      render json: @listing
    else
      render json: @listing.errors.full_messages, status: :unprocessable_entity
    end
  end

  def edit
    @listing = Listing.find(params[:id])
    render json: @listing
  end

  def update
    @listing = Listing.find(params[:id])

    if @listing.update_attributes(listing_params)
      render json: @listing
    else
      render json: @listing.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    list = Listing.find(params[:id])
    list.destroy
    render json: @listing
  end

  private

  def listing_params
    params.require(:listing).permit(
      :user_id,
      :list_title,
      :list_desc,
      :frame,
      :f_wheel,
      :r_wheel,
      :seat,
      :handlebars,
      :brakes,
      :daily,
      :weekly,
      :rules,
      :deposit
    )
  end

end
