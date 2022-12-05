class Article < ApplicationRecord
  belongs_to :author

  has_many :comments, dependent: :destroy
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags

  validates :body, :title, presence: true
  validates :body, length: { maximum: 5000 }
  validates :title, uniqueness: true, length: { maximum: 250 }
end
