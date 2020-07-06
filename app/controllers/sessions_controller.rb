class SessionsController < ApplicationController
    def new #login form
    end

    def create #login action
        @user = User.find_by(email: params[:email])
        if @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:warning] = "Invalid email or password. Please try again."
            redirect_to "/login"
        end
    end

    def destroy #logout
        session.destroy
        redirect_to "/login"
    end
end
