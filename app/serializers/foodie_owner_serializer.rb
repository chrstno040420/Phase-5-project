class FoodieOwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :password
  belongs_to :food_truck
end
