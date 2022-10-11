class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas, dependent: :destroy #Deletes any row in the associated table.
    has_many :pizzas, through: :restaurant_pizzas
end