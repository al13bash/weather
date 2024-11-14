require "rails_helper"

RSpec.describe WeatherRequestsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/weather_requests").to route_to("weather_requests#index")
    end

    it "routes to #show" do
      expect(get: "/weather_requests/1").to route_to("weather_requests#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/weather_requests").to route_to("weather_requests#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/weather_requests/1").to route_to("weather_requests#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/weather_requests/1").to route_to("weather_requests#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/weather_requests/1").to route_to("weather_requests#destroy", id: "1")
    end
  end
end
