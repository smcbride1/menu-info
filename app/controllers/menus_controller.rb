class MenusController < ApplicationController
    #before_action :authorize?, only: [:create, :edit, :update, :destroy]

    def new
        return redirect_to "/login" if !helpers.logged_in?
        @menu = Menu.new
    end

    def create
        @menu = Menu.new(menu_params)
        @menu.restaurant_id = params[:restaurant_id]
        authorize?(@menu.restaurant.user_id)
        if !@menu.valid?
            return render :new
        else
            @menu.save
            redirect_to menu_path(@menu)
        end
    end

    def index
        if params.has_key?(:menu_type_id)
            @menus = Menu.where(menu_type_id: params[:menu_type_id])
        elsif params.has_key?(:restaurant_id)
            @menus = Menu.where(restaurant_id: params[:restaurant_id])
        else
            @menus = Menu.all
        end
    end

    def show
        @menu = Menu.find(params[:id])
    end

    def edit
        @menu = Menu.find(params[:id])
        authorize?(@menu.restaurant.user_id)
    end

    def update
        @menu = Menu.find(params[:id])
        authorize?(@menu.restaurant.user_id)
        if !@menu.update(menu_params)
            return render :edit
        else
            redirect_to menu_path(@menu)
        end
    end

    def destroy
        @menu = Menu.find(params[:id])
        authorize?(@menu.restaurant.user_id)
        @menu.destroy
        redirect_to menus_path
    end

    def menu_params
        params.require(:menu).permit(:name, :description, :restaurant_id)
    end
end
