class Tag < ApplicationRecord
    has_many :menu_items_tags, dependent: :destroy
    has_many :menu_items, through: :menu_items_tags
    has_many :menus, through: :menu_items

    validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
end
