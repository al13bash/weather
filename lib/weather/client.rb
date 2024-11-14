module Weather
  class Client < BaseClient
    BASE_URL = ENV['WEATHER_BASE_URL']
  end
end