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

    def restaurant_params
        params.require(:restaurant).permit(:name, :description, :website, :phone_number, :address)
    end
end
