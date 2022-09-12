module current_user_concern
    extend ActiveSupport::Concern 

included do 
    before_acion :set_current_user
end

def set_current_user
    if session[foodie_owner_id]
        @current_user = FoodieOwner.find(session[:foodie_owner_id])
    end
end