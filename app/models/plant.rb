class Plant < ApplicationRecord
    has_many :pictures
    has_many :posts
    has_many :plant_location_months
    has_many :plant_bugs
    has_many :plant_diseases
end
