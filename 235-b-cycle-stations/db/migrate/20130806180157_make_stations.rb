class MakeStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string  :station_name
      t.string  :station_address
      t.string  :property_type
      t.integer :num_docks
      t.string  :power_type
      t.string  :address1
      t.string  :zip_code
      t.string  :status
    end
  end
end
