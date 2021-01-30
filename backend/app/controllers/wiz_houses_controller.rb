class WizHousesController < ApplicationController


    def index
        wiz_houses = WizHouse.all 
        render json: WizHouseSerializer.new(wiz_houses).to_serialized_json
    end 

    def show 
      wiz_house = WizHouse.find(params[:id])
      render json: WizHouseSerializer.new(wiz_house).to_serialized_json
    end

    def create
      # byebug
      wiz_house = WizHouse.new(wizard_id: wiz_house_params[:wizard_id], house_id: House.all[rand(0..3)].id)  
        if wiz_house.save
          render json: WizHouseSerializer.new(wiz_house).to_serialized_json
        end
    end

    def delete
      WizHouse.find(params[:id]).destroy
    end

    private

    def wiz_house_params
        params.require(:wiz_house).permit(:wizard_id, :house_id)
    end 
end
