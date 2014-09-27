module Api
  class ListingsController < ApplicationController

    def new
      @listing = Listing.new
      render json: @listing
    end

    def index
      if params["bottom_left_lat"]
        @listings = Listing.includes(:images).where(
        "latitude >= ? AND latitude <= ?
        AND
        longitude >= ? AND longitude <= ?",
        params["bottom_left_lat"], params["top_right_lat"], params["bottom_left_long"], params["top_right_long"])
      else
        @listings = Listing.includes(:images).all
      end

      #use the :bounds from params
      #to make a Listing.where(...)
      # that only returns listings within bounds

      # @images = @listings.first.images
      render :index
      # render json: @images
    end

    def show
      @listing = Listing.find(params[:id])
      @images = @listing.images
      @owner = @listing.owner
      render :show
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
        :price,
        :lat,
        :long,
        :street,
        :city,
        :state,
        :zip,
        :deposit
      )
    end
  end
end
