class User < ApplicationRecord
    has_secure_password

    has_many :restaurants
    has_many :menus, through: :restaurants
    has_many :menu_items, through: :menus
end
