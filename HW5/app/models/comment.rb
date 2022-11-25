class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :article

  validates :body, :author_id, :article_id, presence: true

  enum status: { unpublished: 0, published: 1 }
end
