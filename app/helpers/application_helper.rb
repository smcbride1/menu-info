module ApplicationHelper
    def current_user
        User.find(session[:user_id]) if session.has_key?(:user_id)
    end
    def logged_in?
        current_user
    end
    def search(query)
        results = {}
        results["restaurant_results"] = Restaurant.where('name LIKE ?', "%#{query}%")
        results["menu_results"] =  Menu.where('name LIKE ?', "%#{query}%")
        results["menu_item_results"] =  MenuItem.where('name LIKE ?', "%#{query}%")
        results
        #@menu_item_results << Tag.where('name LIKE ?', "%#{query}%").map {|tag| tag.menu_items}.first
    end
end
