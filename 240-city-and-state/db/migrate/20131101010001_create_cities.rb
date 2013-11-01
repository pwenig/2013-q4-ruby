class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :rank
      t.string  :name
      t.string  :state_abbreviation
      t.integer :population
    end
  end
end
