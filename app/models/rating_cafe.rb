class RatingCafe < ApplicationRecord
    belongs_to :user
    belongs_to :cafe
end
