class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true

    has_many :cafe_ratings
    has_many :roaster_ratings
    has_many :cafes, through: 'cafe_ratings'
    has_many :roasters, through: 'roaster_ratings'

end
