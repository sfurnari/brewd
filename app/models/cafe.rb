class Cafe < ApplicationRecord
    belongs_to :roaster, optional: true
    has_many :cafe_ratings
    has_many :users, through: 'cafe_ratings'
    validates :name, length: {minimum: 2}
end
