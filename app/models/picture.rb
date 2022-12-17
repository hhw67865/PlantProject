class Picture < ApplicationRecord
  belongs_to :post
  belongs_to :plant
  belongs_to :bug
  belongs_to :disease
end
