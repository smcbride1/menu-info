class SessionsController < ApplicationController
    def new #login form
    end

    def create #login action
        if auth
            @user = User.find_or_create_by(facebook_uid: auth["uid"]) do |u|
                u.name = auth["info"]["name"]
                u.email = auth["info"]["email"]
                u.password = SecureRandom.hex
            end
            if @user.valid?
                session[:user_id] = @user.id
                redirect_to user_restaurants_path(@user)
            else
                flash[:warning] = "Something went wrong. Please make sure that you don't already have an account with this account's email address."
                redirect_to "/login"
            end
        else
            @user = User.find_by(email: params[:email])
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to user_restaurants_path(@user)
            else
                flash[:warning] = "Invalid email or password. Please try again."
                redirect_to "/login"
            end
        end
    end

    def destroy #logout
        session.destroy
        redirect_to "/login"
    end

    def auth
        request.env['omniauth.auth']
    end
end
