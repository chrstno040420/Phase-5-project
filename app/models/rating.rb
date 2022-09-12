class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :food_truck
end
