class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :menus, dependent: :destroy
    has_many :menu_items, through: :menus
    
    validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 1000 }
    validates :website, length: { maximum: 400 }
    validates :phone_number, numericality: true, length: { in: 10..15 }
    validates :address, presence: true, length: { maximum: 400 }
end
