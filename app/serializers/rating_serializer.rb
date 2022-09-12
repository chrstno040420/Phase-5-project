class RatingSerializer < ActiveModel::Serializer
  attributes :id, :star_rating, :discription
  has_one :user
  has_one :food_truck
end
