class MenuItemsTag < ApplicationRecord
    belongs_to :menu_item
    belongs_to :tag
end