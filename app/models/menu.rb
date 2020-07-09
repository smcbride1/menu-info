class Menu < ApplicationRecord
    belongs_to :restaurant
    has_many :menu_types
    has_many :menu_items, dependent: :destroy
    has_many :tags, through: :menu_items
end
