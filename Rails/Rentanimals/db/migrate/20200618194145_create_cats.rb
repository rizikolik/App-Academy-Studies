class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :sex
      t.text :description
      t.date :birth_date
      t.string :color

      t.timestamps
    end
  end
end
