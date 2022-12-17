class Bug < ApplicationRecord
    has_many :pictures
    has_many :plant_bugs
end
