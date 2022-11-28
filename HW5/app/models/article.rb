class Article < ApplicationRecord
  belongs_to :author, dependent: :destroy
  has_many :comments

  validates :body, :title, presence: true
  validates :body, length: { maximum: 5000 }
  validates :title, uniqueness: true, length: { maximum: 250 }
end
