class RestaurantsController < ApplicationController
    before_action: :set_orders,only: %i[show, update,destroy]
    
    # GET ORDERS
    def index
        @order = Restaurant.all
        render json: @order
    end

    # GET ORDERS/1
    def show
        @order = Restaurant.find_by(params[:id])
        render json: @order
    end

    # POST ORDER
    def create
        @order = Restaurant.new(order_params)
        if @order.create
            render json: @order,status: :created
        else
            render json:Restaurant.errors,status: :unprocessable_entity
        end

    end

    # UPDATE/PATCH ORDER
    def update
        if @order.update(order_params)
            render json: @order,status: :created
        else
            render json:Restaurant.errors,status: :unprocessable_entity
        end
    end

    private
    
    def set_orders
        @order=Restaurant.find_by(params[:id])
    end

    def order_params
        params.permit(:user_name,:phone,:address,:email)
    end
end
