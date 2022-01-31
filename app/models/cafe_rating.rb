class CafeRating < ApplicationRecord
    belongs_to :user
    belongs_to :cafe
end
