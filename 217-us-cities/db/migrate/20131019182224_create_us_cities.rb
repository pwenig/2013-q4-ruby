class CreateUsCities < ActiveRecord::Migration
  def change
    create_table :us_cities do |t|
      t.string :name
      t.string :state_abbreviation
      t.float :latitude
      t.float :longitude
      t.string :time_zone
    end
  end
end
