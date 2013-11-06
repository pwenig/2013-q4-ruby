class CreateTeamsAndPlayers < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
    end
    create_table :players do |t|
      t.integer :team_id
      t.string :name
    end
  end
end
