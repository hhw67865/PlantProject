class User < ApplicationRecord
  belongs_to :location
  has_many :posts
  has_many :comments
  has_many :replies
end
