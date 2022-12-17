class PictureSerializer < ActiveModel::Serializer
  attributes :id, :picture_url
  has_one :post
  has_one :plant
  has_one :bug
  has_one :disease
end
