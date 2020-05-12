class CreateAnswerQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_questions do |t|
      t.string :text ,null: false
      t.integer :question_id, null: false
      t.timestamps
    end
    add_index :answer_questions, :question_id
  end
end
