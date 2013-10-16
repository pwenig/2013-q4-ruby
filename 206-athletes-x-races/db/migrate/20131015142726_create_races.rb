class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
    	t.string :name
    	t.integer: num_meters
    end
  end
end
