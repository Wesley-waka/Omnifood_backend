class FoodsController < ApplicationController
    before_action :set_food, only: %i[ show update destroy ]

    # GET food
    def index
        @foods = Food.all

        render json:@foods
    end

    # GET food/1
    def show
        render json:@food
    end
    # POST FOOD
    def create
        @food = Food.create!(food_params)
        if @food.create
            render json: @food,status: :created
        else
            render json: @Food.errors,status: :unprocessable_entity
        end
    end

    # UPDATE/PATCH food/1
    def update
        @food = Food.update(food_params)
        if @food
            render json: @food,status: :updated
        else
            render json: Food.erroes,status: :unprocessable_entity
        end
    end

    # DELETE food/1
    def destroy
        render json: :@food.destroy, status: :ok
    end

    private

    def set_food
        @food=Food.find(params[:id])
    end

    def food_params
        @food.permit(restaurant_id,food_name,food_category,food_price,food_details)
    end
end
