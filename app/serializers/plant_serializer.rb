class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :symptoms, :soil_mix, :harvest
end
