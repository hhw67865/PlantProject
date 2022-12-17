class Disease < ApplicationRecord
    has_many :pictures
    has_many :plant_diseases
end
