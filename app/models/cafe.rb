class Cafe < ApplicationRecord
    belongs_to :roaster, optional: true
    has_many :rating_cafes
    has_many :users, through: 'cafe_ratings'
end
