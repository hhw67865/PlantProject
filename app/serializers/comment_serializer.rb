class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :likes
  has_one :post
  has_one :user
end
