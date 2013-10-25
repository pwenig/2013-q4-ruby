class CreateLanguageFamilies < ActiveRecord::Migration
  def change
    create_table :language_families do |t|
      t.string :name
    end
  end
end
