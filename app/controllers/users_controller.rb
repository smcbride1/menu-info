class UsersController < ApplicationController
    before_action :check_authorization, only: [:update, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        return redirect_to new_user_path if !@user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to new_restaurant_path
    end

    def show
    end

    def edit
    end

    def update
        return redirect_to edit_user_path if !current_user.update(user_params)
        redirect_to user_path(current_user)
    end

    def destroy
    end

    def user_params
        params.require(:user).permit(:email, :name, :password)
    end

    private

    def check_authorization
        return redirect_to "/" if params[:user][:id] != User.find(session[:user_id])
    end
end
