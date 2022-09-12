class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :picture
      t.belongs_to :food_truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
