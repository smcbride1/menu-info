class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def index
    end

    def authorize?(object=nil)
        if params.has_key?(:user_id)
            if !session.has_key?("user_id") || params[:user_id] != session[:user_id].to_s
                flash[:warning] = "You are not authorized to view this page."
                return redirect_to login_path
            end
        else
            if helpers.current_user.id != object.user.id
                flash[:warning] = "You are not authorized to execute this action."
                return redirect_to login_path
            end
        end
        true
    end
end
