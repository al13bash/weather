module WeatherRequests
  class Create
    attr_reader :params, :request_time

    def initialize(params:)
      @params = params
      @request_time = Time.zone.now
    end

    def run
      return if weather_request.blank?

      WeatherRequest.create(attributes)
    end

    private def attributes
      {
        request_time:,
        city:,
        date:,
        temperature: weather_request['temperature'],
        precipitation_probability: weather_request['precipitation_probability'],
        precipitation_mm: weather_request['precipitation_mm']
      }
    end

    private def weather_request
      @weather_request ||= Weather::Api.new.weather(city:, date:)
    end

    private def city
      @city ||= params[:city]
    end

    private def date
      @date ||= params[:date]
    end
  end
end