class MenuType < ApplicationRecord
    has_many :menus
    has_many :menu_items, through: :menus

    validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
end
 
