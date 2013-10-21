class CreateWorldCities < ActiveRecord::Migration
  def change
    create_table :world_cities do |t|
      t.string  :name
      t.string  :country
      t.string  :country_flag_filename
      t.integer :time_zone_offset
      t.integer :population_in_millions
    end
  end
end
