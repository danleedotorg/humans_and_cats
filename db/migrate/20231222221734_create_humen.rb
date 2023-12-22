class CreateHumen < ActiveRecord::Migration[7.1]
  def change
    create_table :humen do |t|
      t.text :name
      t.integer :age
      t.integer :gender

      t.timestamps
    end
  end
end
