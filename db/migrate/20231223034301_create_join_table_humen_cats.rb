class CreateJoinTableHumenCats < ActiveRecord::Migration[7.1]
  def change
    create_join_table :humen, :cats do |t|
      t.index [:human_id, :cat_id]
      t.index [:cat_id, :human_id]
    end
  end
end
