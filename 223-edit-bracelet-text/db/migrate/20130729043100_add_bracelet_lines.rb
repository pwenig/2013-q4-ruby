class AddBraceletLines < ActiveRecord::Migration
  def change
    create_table :bracelet_lines do |t|
      t.integer :font_size
      t.string :text
    end
  end
end
