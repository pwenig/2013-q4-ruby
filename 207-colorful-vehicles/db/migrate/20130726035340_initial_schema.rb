class InitialSchema < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.string :html_color_code
    end

    create_table :vehicles do |t|
      t.string :name
      t.string :image_filename
    end
  end
end
