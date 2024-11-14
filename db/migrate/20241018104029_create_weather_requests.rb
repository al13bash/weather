class CreateWeatherRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :weather_requests do |t|
      t.datetime :request_time
      t.string :city
      t.datetime :date
      t.string :temperature
      t.integer :precipitation_probability
      t.integer :precipitation_mm

      t.timestamps
    end
  end
end
