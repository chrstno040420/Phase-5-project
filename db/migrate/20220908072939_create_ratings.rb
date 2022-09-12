class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :star_rating
      t.text :discription
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :food_truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
