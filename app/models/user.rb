class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true

    has_many :rating_cafes
    has_many :roaster_ratings
    has_many :cafes, through: 'cafe_ratings'
    has_many :roasters, through: 'roaster_ratings'
    has_many :following_relationships, class_name: 'Follow', foreign_key: 'follower_id'
    has_many :followed_relationships, class_name: 'Follow', foreign_key: 'followed_id'

    has_many :following, through: :following_relationships, source: :followed
    has_many :followers, through: :followed_relationships, source: :follower

    def follow_safe other_user
        if self.following.include? other_user
            return false
        else
            self.following << other_user
            return true
        end
    end 

    def following_users
        User.where user: self.following        
    end
end
