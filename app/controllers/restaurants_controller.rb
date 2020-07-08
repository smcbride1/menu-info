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
        if params.has_key?(:user)
            @restaurants = Restaurant.where(user_id: params[:user][:id])
        else
            @restaurants = Restaurant.all
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    def edit
        @restaurant = Restaurant.find(params[:id])
        authorize?(@restaurant)
    end

    def update
        @restaurant = Restaurant.find(params[:id])
        authorize?(@restaurant)
        if !@restaurant.update(restaurant_params)
            return render :edit
        else
            redirect_to restaurant_path(@restaurant)
        end
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        authorize?(@restaurant)
        @restaurant.destroy
        redirect_to restaurants_path
    end

    def restaurant_params
        params.require(:restaurant).permit(:name, :description, :website, :phone_number, :address)
    end
end
