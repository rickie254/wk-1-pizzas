class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_validation_error
      #POST /restaurant_pizzas
      def create
        new_restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json:new_restaurant_pizza, status: :created
      end
    
      private
      def restaurant_pizza_params
        params.permit(:price,:pizza_id,:restaurant_id)
      end
    
      def  render_validation_error
        render json: {errors:["validation errors"]}
       end
    end