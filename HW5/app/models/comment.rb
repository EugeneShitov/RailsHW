class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :article

  validates :body, :author_id, :article_id, presence: true

  enum status: { unpublished: 0, published: 1 }

  scope :published, -> { where(status: 1) }
  scope :unpublished, -> { where(status: 0) }
end
