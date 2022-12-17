class Post < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :pictures
  has_many :comments
end
