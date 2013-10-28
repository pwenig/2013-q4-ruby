class InitialSchema < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :systolic
      t.integer :diastolic
    end
  end
end
