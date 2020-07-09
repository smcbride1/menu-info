class MenuItem < ApplicationRecord
    belongs_to :menu
    has_many :menu_items_tags, dependent: :destroy
    has_many :tags, through: :menu_items_tags
end
