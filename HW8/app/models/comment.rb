class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :article

  has_many :likes, as: :likeable

  validates :body, :author_id, :article_id, presence: true

  enum status: { unpublished: 0, published: 1 }

  scope :published, -> { where(status: 'published') }
  scope :unpublished, -> { where(status: 'unpublished') }
  scope :last_ten, -> { where(status: 'published').last(10) }
  scope :filter_by_status, ->(filter) { where(status: filter) }
end
