class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def index
    end

    def search
        @query = params[:query]
        @results = helpers.search(@query)
    end

    def authorize?(user_id=nil)
        if params.has_key?(:user_id)
            if !session.has_key?("user_id") || params[:user_id] != session[:user_id].to_s
                flash[:warning] = "You are not authorized to view this page."
                return redirect_to login_path
            end
        else
            if helpers.current_user.id != user_id
                flash[:warning] = "You are not authorized to execute this action."
                return redirect_to login_path
            end
        end
        true
    end
end
