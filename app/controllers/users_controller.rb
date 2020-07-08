class UsersController < ApplicationController
    before_action :check_authorization, only: [:edit, :update, :destroy, :show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        return render :new if !@user.valid?
        @user.save
        session[:user_id] = @user.id
        redirect_to new_restaurant_path
    end

    def show
        @user = User.find(params[:id])
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
        if !session.has_key?("user_id") || params[:id] != session[:user_id].to_s
            flash[:warning] = "You are not authorized to view this page."
            return redirect_to login_path
        end
    end
end
