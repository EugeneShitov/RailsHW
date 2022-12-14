class Api::V1::CommentSerializer < ActiveModel::Serializer
  attributes :id, :status, :body, :created_at, :author

  has_one :article
  has_one :author
end
