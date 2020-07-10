class MenuItem < ApplicationRecord
    belongs_to :menu
    has_many :menu_items_tags
    has_many :tags, through: :menu_items_tags, dependent: :destroy

    validates :name, presence: true, length: { maximum: 100 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :description, presence: true, length: { maximum: 1000 }

    scope :dollar_menu, -> { where("price < 2") }
    scope :under_five, -> { where("price < 5") }
    scope :under_ten, -> { where("price < 10") }
    scope :under_twenty, -> { where("price < 20") }
end
