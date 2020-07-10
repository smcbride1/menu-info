class Menu < ApplicationRecord
    belongs_to :restaurant
    has_many :menu_types
    has_many :menu_items, dependent: :destroy
    has_many :tags, through: :menu_items

    validates :name, presence: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 1000 }
end
