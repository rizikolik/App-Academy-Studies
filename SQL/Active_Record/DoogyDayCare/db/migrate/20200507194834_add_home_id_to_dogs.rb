class AddHomeIdToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs,:home_id,:integer,null:false
  end
end
