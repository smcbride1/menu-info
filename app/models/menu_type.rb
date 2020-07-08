class MenuType < ApplicationRecord
    has_many :menus
    has_many :menu_items, through: :menus
end
 
