class Disease < ApplicationRecord
    has_many :pictures, dependent: :destroy
    has_many :plant_diseases, dependent: :destroy
    has_many :plants, through: :plant_diseases
end
