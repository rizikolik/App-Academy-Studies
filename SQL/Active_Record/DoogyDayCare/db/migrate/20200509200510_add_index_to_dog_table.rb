class AddIndexToDogTable < ActiveRecord::Migration[6.0]
  def change
 
    add_index :dogs ,:name
  end
end
