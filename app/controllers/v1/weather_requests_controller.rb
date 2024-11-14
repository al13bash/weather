module V1
  class WeatherRequestsController < ApplicationController
    # POST /weather_requests
    def create
      @weather_request = WeatherRequests::Create.new(params: weather_request_params).run

      if @weather_request.valid?
        render json: @weather_request, status: :created
      else
        render json: @weather_request.errors, status: :unprocessable_entity
      end
    end

    private

    # Only allow a list of trusted parameters through.
    def weather_request_params
      params.require(:weather_request).permit(:city, :date)
    end
  end
end
