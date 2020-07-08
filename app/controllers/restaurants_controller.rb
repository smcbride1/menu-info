class RestaurantsController < ApplicationController
    def new
        return redirect_to "/login" if !helpers.logged_in?
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.user = helpers.current_user
        return render :new if !@restaurant.valid?
        @restaurant.save
        redirect_to restaurant_path(@restaurant)
    end

    def index
        if params.has_key?(:user)
            @restaurants = Restaurant.where(user_id: params[:user][:id])
        else
            @restaurants = Restaurant.all
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :description, :website, :phone_number, :address)
    end
end
