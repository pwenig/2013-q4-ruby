class InitialSchema < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :company_id
    end

    create_table :companies do |t|
      t.string :name
      t.string :stock_symbol
    end
  end
end
