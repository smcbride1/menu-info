class User < ApplicationRecord
    has_secure_password

    has_many :restaurants, dependent: :destroy #dependent: :destroy used to destroy records associated with this model
    has_many :menus, through: :restaurants
    has_many :menu_items, through: :menus

    validates :name, presence: true, length: { maximum: 100 }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, presence: true
end
