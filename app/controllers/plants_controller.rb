class PlantsController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
        user = current_user
        plant = Plant.find_or_create_by(params[:plant_id])
    end

    def search
        @name = params[:name]
        @search = Trefle::Adapter.search(params[:name])

        @temp = @search.map do |p|
            Plant.new_from_hash(p)
        end  
        render :index 
    end

    def destroy
    end
    
end
