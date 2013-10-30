class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.integer :number
      t.string :symbol
      t.string :name
      t.float  :melting_point
      t.string :category
    end
  end
end
