class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :menus, dependent: :destroy
    has_many :menu_items, through: :menus
end
