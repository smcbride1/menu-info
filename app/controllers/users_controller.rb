class UsersController < ApplicationController
    def new
    end

    def create
        @user = User.new(user_params)
        return redirect_to new_user_path if !@user.valid?
        @user.save
        redirect_to new_restaurant_path
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def user_params
        params.require(:user).permit(:email, :name, :password)
    end
end
