class Cat < ApplicationRecord
  has_and_belongs_to_many :humen

  enum gender: { male: 0, female: 1, other: 2}
end
