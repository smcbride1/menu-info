class MenuItem < ApplicationRecord
    belongs_to :menu
    has_many :menu_items_tags, dependent: :destroy
    has_many :tags, through: :menu_items_tags

    validates :name, presence: true, length: { maximum: 100 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :description, presence: true, length: { maximum: 1000 }
end
