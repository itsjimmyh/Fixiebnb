module Api
  class RequestsController < ApplicationController
    def index
      
    end

    def new
      @request = Request.new
      render json: @request
    end

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


    private

    def request_params
      params.require(:request).permit(
        :user_id,
        :listing_id,
        :start_date,
        :end_date,
      )
    end

  end
end
