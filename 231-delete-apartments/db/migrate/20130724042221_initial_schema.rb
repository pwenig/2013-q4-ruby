class InitialSchema < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string  :address
      t.integer :rent_per_month
      t.integer :num_bedrooms
      t.boolean :does_allow_pets
      t.string  :url
    end
  end
end
