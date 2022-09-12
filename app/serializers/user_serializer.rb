class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :email, :phone_number, :profile_pic
end
