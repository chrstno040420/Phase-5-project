class MenuSerializer < ActiveModel::Serializer
  attributes :id, :picture
  has_one :food_truck
end
