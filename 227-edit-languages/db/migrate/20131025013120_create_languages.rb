class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.integer :num_speakers
      t.integer :language_family_id
      t.string :main_script
      t.boolean :has_arabic_script
    and
  end
end
