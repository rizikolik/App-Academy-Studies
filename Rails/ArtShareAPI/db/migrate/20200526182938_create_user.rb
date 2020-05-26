class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name ,null:false, uniq:true
      t.string :email ,null:false
      t.timestamps
    end
  end
end
