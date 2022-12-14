class Article < ApplicationRecord
  belongs_to :author

  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable
  has_and_belongs_to_many :tags

  validates :body, :title, presence: true
  validates :body, length: { maximum: 5000 }
  validates :title, uniqueness: true, length: { maximum: 250 }

  scope :search_title_and_body, ->(phrase) { where('title || body ILIKE ?', "%#{phrase}%") }
  scope :filter_by_author, ->(author_is) { joins(:author).where('name ILIKE ?', "%#{author_is}") }
  scope :filter_by_tag, ->(tag_is) { joins(:tags).where('name ILIKE ?', "%#{tag_is}%") }
  scope :sort_title_by_asc_desc, ->(order = 'asc') { order(title: order) }
end
