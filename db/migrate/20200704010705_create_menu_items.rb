class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.belongs_to :menu

      t.timestamps
    end
  end
end
