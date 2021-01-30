class SessionsController < ApplicationController
    
    def new
        @wizard = Wizard.new
    end

    def create
      # byebug
        wizard = Wizard.find_by(name: params[:name])
        # byebug
        if wizard && wizard.authenticate(params[:password])
            session[:id] = wizard.id
            render json: {
              status: 200,
              session_id: session[:id],
              wizard: WizardSerializer.new(wizard).to_serialized_json
            }
        else
            render json: {status:401}
        end
    end

    def createhouse
    #   byebug
        house = House.find_by(name: params[:name])
        if house && house.authenticate(params[:password])
            session[:id] = house.id
            render json: {
              status: 200,
              logged_in: true,
              house: HouseSerializer.new(house).to_serialized_json
            }
        else
            render json: {status:401}
        end
    end



    # def destroy
    #     session.clear
    # end
end


