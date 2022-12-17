class ReplySerializer < ActiveModel::Serializer
  attributes :id, :comment, :likes
  has_one :comment
  has_one :user
end
