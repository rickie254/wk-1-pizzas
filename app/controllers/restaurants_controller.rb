class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound,with: :render_restaurant_not_found
  
    #GET /restaurants 
      def index
          restaurants = Restaurant.all        
          render json: restaurants
      end
  
    #GET /restaurants/:id
      def show
          render json: find_restaurant
      end
  
      #DELETED /restaurants/:id
      def destroy
          restaurant = find_restaurant
          restaurant.destroy
          head :no_content
      end
  
  
      private
      def find_restaurant
          restaurant = Restaurant.find(params[:id])
      end
  
      def render_restaurant_not_found
          render json: {error: "Restaurant not found"}, status: :not_found
      end
  end