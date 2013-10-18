class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
    	t.date   :date
    	t.string :location
    	t.string :description
    end
  end
end
