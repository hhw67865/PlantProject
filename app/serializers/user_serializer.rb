class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :email, :profile_picture, :description
  has_one :location
end
