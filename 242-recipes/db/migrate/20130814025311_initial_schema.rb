class InitialSchema < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string  :name
      t.integer :author_id
      t.text   :ingredients
      t.text   :instructions
    end

    create_table :authors do |t|
      t.string  :first_name
      t.string  :email
    end
  end
end
