class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :author, :title, :body, :created_at

  has_one :author
  has_many :comments
end
