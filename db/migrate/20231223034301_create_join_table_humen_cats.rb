class CreateJoinTableHumenCats < ActiveRecord::Migration[7.1]
  def change
    create_join_table :humen, :cats do |t|
      # From the docs: https://api.rubyonrails.org/v7.1.2/classes/ActiveRecord/Associations/ClassMethods.html#method-i-has_and_belongs_to_many
      # It’s also a good idea to add indexes to each of those columns to speed up the joins process. However, in MySQL it is advised to add a compound index for both of the columns as MySQL only uses one index per table during the lookup.
      t.index [:human_id, :cat_id]
      t.index [:cat_id, :human_id]
    end
  end
end
