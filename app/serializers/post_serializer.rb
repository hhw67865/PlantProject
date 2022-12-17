class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :likes
  has_one :user
  has_one :plant
end
