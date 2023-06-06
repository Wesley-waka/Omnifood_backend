class DeliverersController < ApplicationController
    before_action :set_deliverer,only: %i[ show , update , destroy]
    # GET deliverers
    def get 
        @Deliverer=Deliverer.all
        render json: @Deliverer
    end

    # GET deliverers/1
    def show
        render json: @Deliverer
    end

    # UPDATE/PATCH deliverer/2
    def update
        
        if @Deliverer.update(deliverer_params)
            render json:@Deliverer,status: :created
        else
            render json:Deliverer.errors,status: :unprocessable_entity
        end
    end

    # POST deliverer/3
    def create
        @Deliverer=Deliverer.new(deliverer_params)
        if @Deliverer.create
            render json: @Deliverer,status: :created
        else
            render json:Deliverer.errors,status: :unprocessable_entity
        end
    end

    private

    def set_deliverer
        @Deliverer.find(params[:id])
    end
    
    def deliverer_params
        params.permit(:user_name,:email,:phone,:address)
    end

end
