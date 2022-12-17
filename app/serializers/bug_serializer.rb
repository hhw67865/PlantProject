class BugSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :prevention
end
