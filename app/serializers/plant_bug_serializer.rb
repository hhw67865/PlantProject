class PlantBugSerializer < ActiveModel::Serializer
  attributes :id
  has_one :plant
  has_one :bug
end
