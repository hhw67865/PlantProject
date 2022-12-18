class Plant < ApplicationRecord
    has_many :pictures, dependent: :destroy
    has_many :posts, dependent: :destroy
    has_many :plant_location_months, dependent: :destroy
    has_many :plant_bugs, dependent: :destroy
    has_many :plant_diseases, dependent: :destroy
    has_many :locations, through: :plant_location_months
    has_many :months, through: :plant_location_months
    has_many :bugs, through: :plant_bugs
    has_many :diseases, through: :plant_diseases
    
end
