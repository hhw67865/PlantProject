class User < ApplicationRecord
  belongs_to :location
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :replies, dependent: :destroy
end
