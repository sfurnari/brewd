class Cafe < ApplicationRecord
    has_and_belongs_to_many :users
    belongs_to :roaster, optional: true
end
