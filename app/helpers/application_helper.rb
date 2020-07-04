module ApplicationHelper
    def current_user
        User.find(session[:user][:id])
    end
    def logged_in
    end
end
