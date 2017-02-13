class Restaurant < ApplicationRecord
  has_many :reviews
  has_and_belongs_to_many :cuisines
  has_and_belongs_to_many :restrictions
end
