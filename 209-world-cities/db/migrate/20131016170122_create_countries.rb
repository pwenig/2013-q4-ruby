class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
    	t.string :name
    	t.string :image_file
    	t.string :time_zone
    	t.string :population
    end
  end
end

