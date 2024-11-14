
module Weather
  class Api
    attr_reader :client

    def weather(city:, date:)
      response = client.get(path: "#{city}/#{date}")

      if response.success?
        response.body
      else
        nil
      end
    end

    private def client
      @client ||= Client.new
    end
  end
end