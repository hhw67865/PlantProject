class Post < ApplicationRecord
  belongs_to :user
  belongs_to :plant
  has_many :pictures, dependent: :destroy
  has_many :comments, dependent: :destroy
  
end
