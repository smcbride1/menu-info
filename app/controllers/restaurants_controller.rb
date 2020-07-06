class RestaurantsController < ApplicationController
    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.user = current_user
        if @restaurant.valid?
            @restaurant.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new
        end
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :description, :website, :phone_number, :address)
    end
end
