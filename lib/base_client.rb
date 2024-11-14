class BaseClient
  def get(path:)
    connection.get(path)
  end

  def post(path:, body:)
    connection.post(path, body)
  end

  private def connection
    puts self.class
    @connection ||= Faraday.new(url: self.class.const_get(:BASE_URL)) do |builder|
      builder.request :json
      builder.response :json
      builder.response :logger
    end
  end
end
