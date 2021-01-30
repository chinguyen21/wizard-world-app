class WandsController < ApplicationController
  
    def index
        wands = Wand.all 
        render json: WandSerializer.new(wands).to_serialized_json
    end 

    def show 
        wand = Wand.find(params[:id])
        render json: WandSerializer.new(wand).to_serialized_json
    end

end
