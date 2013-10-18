class CreateUfoSightings < ActiveRecord::Migration
  def change
    create_table :ufo_sightings do |t|
      t.string  :location
      t.date    :when_seen
      t.string  :description
    end
  end
end
