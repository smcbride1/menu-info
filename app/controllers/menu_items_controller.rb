class MenuItemsController < ApplicationController
    #before_action :authorize?, only: [:create, :edit, :update, :destroy]

    def new
        return redirect_to "/login" if !helpers.logged_in?
        @menu_item = MenuItem.new
    end
    
    def create
        @menu_item = MenuItem.new(menu_item_params)
        @menu_item.menu_id = params[:menu_id]
        authorize?(@menu_item.menu.restaurant.user_id)
        if !@menu_item.valid?
            return render :new
        else
            @menu_item.save
            redirect_to menu_item_path(@menu_item)
        end
    end

    def index
        if params.has_key?(:tag_id)
            #CREATE JOIN TABLE FOR TAGS (menu_items_tags)
            #@menu_items = MenuItem.where(tag_id: params[:tag_id])
        elsif params.has_key?(:menu_id)
            @menu_items = MenuItem.where(menu_id: params[:menu_id])
        else
            @menu_items = MenuItem.all
        end
    end

    def show
        @menu_item = MenuItem.find(params[:id])
    end

    def edit
        @menu_item = MenuItem.find(params[:id])
        authorize?(@menu_item.menu.restaurant.user_id)
    end

    def update
        @menu_item = MenuItem.find(params[:id])
        authorize?(@menu_item.menu.restaurant.user_id)
        byebug
        if !@menu_item.update(menu_item_params)
            return render :edit
        else
            redirect_to menu_item_path(@menu_item)
        end
    end

    def destroy
        @menu_item = MenuItem.find(params[:id])
        authorize?(@menu_item.menu.restaurant.user_id)
        @menu_item.destroy
        redirect_to user_menu_items_path(@menu_item.menu.restaurant.user)
    end

    def menu_item_params
        params.require(:menu_item).permit(:name, :price, :description, :menu_id, tag_ids: [])
    end
end
