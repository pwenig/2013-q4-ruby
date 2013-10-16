class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
    	t.string :term
    	t.string :part_of_speech
    	t.string :definition
    end
  end
end
