class Author < ApplicationRecord
  has_many :articles
  has_many :comments

  validates :name, presence: true, length: { minimum: 2 }
end
