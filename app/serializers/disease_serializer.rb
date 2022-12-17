class DiseaseSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :prevention
end
