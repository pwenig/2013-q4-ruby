class CreateRacingGoats < ActiveRecord::Migration
  def change
    create_table :racing_goats do |t|
      t.string :name
      t.string :gender
      t.string :best_100m_time
      t.string :dietary_preference
    end
  end
end
