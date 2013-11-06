class CreateCarsAndMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string  :name
    end
    create_table :cars do |t|
      t.integer :member_id
      t.string  :model
    end
  end
end
