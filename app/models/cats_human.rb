# what's happening here is that there is a table called cats_humen (note the double plural) if you want to keep the code really minimal, you will have to work with your code like this, what happens is that ActiveRecord only pluralizes the last word to determine the table name

# if you do not like the class name mismatch, you can change the class name but specify a specific table name
class CatsHuman < ApplicationRecord
  belongs_to :human
  belongs_to :cat
end