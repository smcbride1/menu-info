class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :phone_number
      t.string :address
      t.belongs_to :user

      t.timestamps
    end
  end
end
