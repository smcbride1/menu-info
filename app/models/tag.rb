class Tag < ApplicationRecord
    has_many :menu_items_tags, dependent: :destroy
    has_many :menu_items, through: :menu_items_tags
end
