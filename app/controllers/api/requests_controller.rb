module Api
  class RequestsController < ApplicationController

    

    def create
      @request = current_user.requests.new(request_params)

      if @request.save
        render json: @request
      else
        render json: @request.errors.full_messages, status: :unprocessable_entity
      end
    end

    def destroy
      @request = current_user.requests.find(params[:id])
      @request.destroy
      render json: {}
    end

    def update
      @request = Request.find(params[:id])

      if @request.update_attributes(request_params)
        render json: @request
      else
        render json: @request.errors.full_messages, status: :unprocessable_entity
      end
    end

    private

    def current_request
      if params[:id]
        @request = Request.find_by(params[:id])
        @listing = @request.listing
      elsif params[:request]
        @listing = Listing.find(params[:request][:listing_id])
      end
    end


    def request_params
      params.require(:request).permit(
        :user_id,
        :listing_id,
        :start_date,
        :end_date,
        :status
      )
    end

  end
end
