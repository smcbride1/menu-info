class RestaurantsController < ApplicationController
    #before_action :authorize?, only: [:create, :edit, :update, :destroy]

    def new
        return redirect_to "/login" if !helpers.logged_in?
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        @restaurant.user = helpers.current_user
        if !@restaurant.valid?
            return render :new
        else
            @restaurant.save
            redirect_to restaurant_path(@restaurant)
        end
    end

    def index
        if params.has_key?(:user_id)
            @restaurants = User.find(params[:user_id]).restaurants
        else
            @restaurants = Restaurant.all
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def edit
        @restaurant = Restaurant.find(params[:id])
        authorize?(@restaurant.user_id)
    end

    def update
        @restaurant = Restaurant.find(params[:id])
        authorize?(@restaurant.user_id)
        if !@restaurant.update(restaurant_params)
            return render :edit
        else
            redirect_to restaurant_path(@restaurant)
        end
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        authorize?(@restaurant.user_id)
        @restaurant.destroy
        redirect_to user_restaurants_path(@restaurant.user)
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :description, :website, :phone_number, :address)
    end
end
