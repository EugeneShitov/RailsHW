class CommentSerializer < ActiveModel::Serializer
  attributes :id, :status, :author, :body, :created_at

  has_one :author
end
