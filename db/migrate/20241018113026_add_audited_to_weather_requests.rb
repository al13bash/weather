class AddAuditedToWeatherRequests < ActiveRecord::Migration[7.2]
  def change
    add_column :weather_requests, :audited, :boolean, default: false
  end
end
