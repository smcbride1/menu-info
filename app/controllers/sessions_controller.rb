class SessionsController < ApplicationController
    def new #login form
    end

    def create #login action
        @user = User.find(user_params[:id])
        if @user.authenticate(user_params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:warning] = "Invalid email or password. Please try again."
            redirect_to new_session_path
        end
    end

    def destroy #logout
        session.destroy
    end

    def user_params
        params.require(:user).permit(:email, :password)
    end
end
