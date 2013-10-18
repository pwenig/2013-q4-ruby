class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string  :problem
    	t.integer :answer1
    	t.integer :answer2
    	t.integer :answer3
    	t.integer :answer4
    end
  end
end
