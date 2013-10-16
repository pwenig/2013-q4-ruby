class CreateBp < ActiveRecord::Migration
  def change
    create_table :bps do |t|
    t.string :name
    t.integer :systolic
    t.integer :diastolic
    end
  end
end
