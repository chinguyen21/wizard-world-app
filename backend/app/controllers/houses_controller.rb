class HousesController < ApplicationController


    def index
        houses = House.all 
        render json: HouseSerializer.new(houses).to_serialized_json
    end 

  
    private

    def house_params
        params.require(:house).permit(:name)
    end 
end
