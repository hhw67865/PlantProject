class Month < ApplicationRecord
    has_many :plant_location_months
    has_many :plants, through: :plant_location_months

end
