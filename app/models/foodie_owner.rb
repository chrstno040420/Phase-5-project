class FoodieOwner < ApplicationRecord
  belongs_to :food_truck
  has_secure_password

validates :email, presence: true

end
