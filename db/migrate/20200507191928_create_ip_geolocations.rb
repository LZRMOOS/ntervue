class CreateIpGeolocations < ActiveRecord::Migration[5.2]
  def change
    create_table :ip_geolocations do |t|
      t.string :ip_address
      t.string :geolocation
      t.text :notes

      t.timestamps
    end
  end
end
