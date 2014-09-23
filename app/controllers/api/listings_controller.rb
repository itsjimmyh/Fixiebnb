module Api
  class ListingsController < ApplicationController

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
      @listing = current_user.listings.new(listing_params)

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
      @listing = current_user.listings.find(params[:id])

      if @listing.update_attributes(listing_params)
        render json: @listing
      else
        render json: @listing.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
      @listing = current_user.listings.find(params[:id])
      @listing.destroy
      render json: {}
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
end
