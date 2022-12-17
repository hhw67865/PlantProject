class PlantLocationMonth < ApplicationRecord
  belongs_to :plant
  belongs_to :location
  belongs_to :month
end
