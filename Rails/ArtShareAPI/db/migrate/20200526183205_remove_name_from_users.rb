class RemoveNameFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :email 
    add_column :users , :username, :string ,null:false 
    add_index   :users,:username,unique:true
  end
end
