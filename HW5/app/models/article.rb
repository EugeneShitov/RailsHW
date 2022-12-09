class Article < ApplicationRecord
  belongs_to :author

  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable
  has_and_belongs_to_many :tags

  validates :body, :title, presence: true
  validates :body, length: { maximum: 5000 }
  validates :title, uniqueness: true, length: { maximum: 250 }
end
