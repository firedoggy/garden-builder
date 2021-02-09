class PlantsController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
        user = current_user
        plant = Plant.find_or_create_by(params[:plant_id], user)
    end

    def search
    end

    def destroy
    end
    
end
