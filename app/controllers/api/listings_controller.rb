module Api
  class ListingsController < ApplicationController

    def new
      @listing = Listing.new
      render json: @listing
    end

    def current_user_listings
      if current_user && current_user.listings
        @listings = current_user.listings.includes(:images)
      end
      render :index
    end

    def current_user_requests
      if current_user
        @listings = current_user.requests.includes(:images)
      end
      render :users_requests
    end

    def index
      if params["bounds"]
        @listings = Listing.includes(:images).where(
        "latitude >= ? AND latitude <= ?
        AND
        longitude >= ? AND longitude <= ?",
        params["bounds"]["bottom_left_lat"],
        params["bounds"]["top_right_lat"],
        params["bounds"]["bottom_left_long"],
        params["bounds"]["top_right_long"])
      else
        @listings = Listing.includes(:images, :requests).all
      end

      render :index
    end

    def show
      @listing = Listing.find(params[:id])
      @images = @listing.images
      @owner = @listing.owner
      @requests = @listing.requests
      render :show
    end

    def create

      image1 = params[:image1]
      image2 = params[:image2]
      image3 = params[:image3]

      @listing = current_user.listings.new(listing_params)

      if @listing.save

        @listing.images.new(url: image1).save!
        @listing.images.new(url: image2).save!
        @listing.images.new(url: image3).save!

        render json: @listing
      else

        p @listing.errors.full_messages
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
      print params
      params.require(:listing).permit(
        :list_title,
        :list_desc,
        :price,
        :address
      )
    end
  end
end
