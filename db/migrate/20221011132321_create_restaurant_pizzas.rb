class CreateRestaurantPizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_pizzas do |t|
      t.integer :price
      t.integer :price_id
      t.belongs_to :restaurant,null: false, foreign_key: true
      t.timestamps
    end
  end
end
