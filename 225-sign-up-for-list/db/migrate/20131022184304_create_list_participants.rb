class CreateListParticipants < ActiveRecord::Migration
  def change
    create_table :list_participants do |t|
      t.string :email
      t.timestamps
    end
  end
end
