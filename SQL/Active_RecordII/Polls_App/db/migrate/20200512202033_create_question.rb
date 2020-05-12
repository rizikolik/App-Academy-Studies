class CreateQuestion < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :text ,null:false
      t.integer :poll_id,null: false
      t.timestamps
    end
    add_index :questions ,:poll_id
  end
end
