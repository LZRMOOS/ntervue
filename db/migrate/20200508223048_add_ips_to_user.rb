class AddIpsToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :ip_geolocations, :user, index: true, foreign_key: true
  end
end
