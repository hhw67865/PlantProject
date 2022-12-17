class PlantBug < ApplicationRecord
  belongs_to :plant
  belongs_to :bug
end
