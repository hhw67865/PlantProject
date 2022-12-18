class Bug < ApplicationRecord
    has_many :pictures, dependent: :destroy
    has_many :plant_bugs, dependent: :destroy
    has_many :plants, through: :plant_bugs
end
