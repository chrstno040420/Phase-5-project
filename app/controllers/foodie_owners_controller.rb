class FoodieOwnersController < ApplicationController
    def index
        all_owners = FoodieOwner.all 
        render json: all_owners
    end


    def show
        foodie_owner = FoodieOwner.find_by(id: params[:id])
        if foodie_owner
            render json: foodie_owner
        else
            render json: {"errors": "Owner not found"}, status: :not_found
        end
    end

    def update
        owner= FoodieOwner.find_by(id: params[:id])
       
        if owner
            owner.update!(foodie_create_params)
            render json:owner
        else
            render json: {"error": "not right info"}, status: :unauthorized
    end

    def destroy
        owner_to_destroy = FoodieOwner.find_by(id: params[:id])

        if owner_to_destroy
            owner_to_destroy.destroy
            head :no_content
        else
            render json: {"error": "Owner not found"}, status: :not_found
        end
    end

    def create 
        new_foodie_owners = FoodieOwner.create(foodie_create_params)

        if new_foodie_owners.save
            render json: new_foodie_owners
        else
            render json: {"errors": new_foodie_owners.errors.full_messages}, status: unprocessable_entity
        end
    end

    private
    def foodie_create_params
        params.permit(
            :name,
            :email,
            :phone_number,
            :password
        )
        end
    end

end
