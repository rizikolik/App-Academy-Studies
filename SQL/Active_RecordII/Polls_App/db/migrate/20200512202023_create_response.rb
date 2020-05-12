class CreateResponse < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :responded_id
      t.integer :answer_choice_id
      t.timestamps
      
    end
  end
end
