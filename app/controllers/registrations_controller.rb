class RegistrationsController < ApplicationController
    def create
        foodie = FoodieOwner.create!(email: params["name"]["email"],password: params["name"]["password"],
        password_confirmation: params["name"]["password_confirmation"])

     if foodie
        session[:foodie_owner_id] = foodie.id
        render json: {
            status: :created,
            foodie: foodie
        }
    else
        render json: {status: 500}
    end
    end
end
