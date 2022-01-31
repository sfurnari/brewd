class Roaster < ApplicationRecord
    has_many :cafes
    has_many :roaster_ratings
    has_many :users, through: 'roaster_ratings'
end
