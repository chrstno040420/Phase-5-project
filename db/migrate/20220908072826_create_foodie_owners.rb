class CreateFoodieOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :foodie_owners do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :password_digest
      t.belongs_to :food_truck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
