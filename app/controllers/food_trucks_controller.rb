class FoodTrucksController < ApplicationController
    def index
        all_food_trucks = FoodTruck.all 
        render json: all_food_trucks
    end


    def show
        food_truck = FoodTruck.find_by( id: params[:id])
        if foodie_owner
            render json: foodie_owner
        else
            render json: {"errors": "Owner not found"}, status: :not_found
        end
    end

    def update
        truck= FoodTruck.find_by(id: params[:id])
       
        if truck
            truck.update!(foodie_create_params)
            render json:truck
        else
            render json: {"error": "not right info"}, status: :unauthorized
    end

    def destroy
        truck_to_destroy = FoodTruck.find_by(id: params[:id])

        if truck_to_destroy
            truck_to_destroy.destroy
            head :no_content
        else
            render json: {"error": "Food Truck not found"}, status: :not_found
        end
    end

    def create 
        new_truck = Foodtruck.new(foodie_create_params)

        if new_truck.save
            render json: new_truck
        else
            render json: {"errors": new_truck.errors.full_messages}, status: unprocessable_entity
        end
    end

    private
    def foodie_create_params
        params.permit(
            :name, 
            :food_type,
            :addess, 
            :state,
            :zipcode,
            :seating,
            :business_hours,
            :image_url
        )
        end
    end
end
