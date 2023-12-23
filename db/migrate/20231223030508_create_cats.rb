class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.text :name
      t.integer :age
      t.string :breed
      t.integer :gender

      t.timestamps
    end
  end
end
