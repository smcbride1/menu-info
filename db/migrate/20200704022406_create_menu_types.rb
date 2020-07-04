class CreateMenuTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_types do |t|
      t.string :name
      t.boolean :custom, default: false

      t.timestamps
    end
  end
end
