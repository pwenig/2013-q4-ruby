class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string  :name
      t.integer :term_number
      t.text    :biography
      t.boolean :ended_term_early
      t.string  :party
      t.string  :former_occupation
      t.integer :birth_state_id
    end
  end
end
