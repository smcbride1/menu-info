class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.text :description
      t.belongs_to :restaurant

      t.timestamps
    end
  end
end
