class PlantsController < ApplicationController

    def index 
        render json: Plant.all
    end

    def show 
        render json: Plant.find(params[:id])
    end

    def create 
        newPlant = Plant.create(plantParams)
        render json: newPlant,  status: :created
    end

    private 

    def plantParams 
        params.permit(:name, :image, :price)
    end
end
