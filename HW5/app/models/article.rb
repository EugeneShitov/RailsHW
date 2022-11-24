class Article < ApplicationRecord
  has_many :authors
  has_many :comments
end
