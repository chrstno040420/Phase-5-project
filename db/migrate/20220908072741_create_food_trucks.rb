class CreateFoodTrucks < ActiveRecord::Migration[7.0]
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.string :food_type
      t.string :address
      t.string :state
      t.integer :zipcode
      t.string :seating
      t.string  :business_hours
      t.string :image_url

      t.timestamps
    end
  end
end
