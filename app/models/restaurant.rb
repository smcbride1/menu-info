class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :menus, dependent: :destroy
    has_many :menu_items, through: :menus
    
    validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
    validates :description, presence: true, length: { maximum: 1000 }
    validates :website, length: { maximum: 400 }
    validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Not a proper phone number. Phone number should follow this format: (XXX-XXX-XXXX)" }
    validates :address, presence: true, length: { maximum: 400 }
end
