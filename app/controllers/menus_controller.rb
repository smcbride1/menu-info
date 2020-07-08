class MenusController < ApplicationController
    def index
        if params.has_key?(:menu_type)
            @menus = Menu.where(menu_type_id: params[:menu_type][:id])
        elsif params.has_key?(:restaurant)
            @menus = Menu.where(restaurant_id: params[:restaurant][:id])
        else
            @menus = Menu.all
        end
    end

    def show
    end
end
