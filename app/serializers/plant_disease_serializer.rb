class PlantDiseaseSerializer < ActiveModel::Serializer
  attributes :id
  has_one :plant
  has_one :disease
end
