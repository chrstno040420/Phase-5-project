class FoodTruckSerializer < ActiveModel::Serializer
  attributes :name, :food_type, :address, :state, :zipcode, :seating, :image_url
  has_many :foodie_owners
end
