class WizardsController < ApplicationController


    def index
        wizards = Wizard.all 
        render json: WizardSerializer.new(wizards).to_serialized_json
    end 

    def show 
        wizard = Wizard.find(params[:id])
        render json: WizardSerializer.new(wizard).to_serialized_json
    end

    def new
        @wizard = Wizard.new
    end

    def create
        wizard = Wizard.new(wizard_params)
        if wizard.save
            session[:id] = wizard.id
            render json: {
                status: 200,
                session_id: session[:id],
                wizard: WizardSerializer.new(wizard).to_serialized_json
                }
        else
            # byebug
            render json: {status: 401, errors: wizard.errors.full_messages}
        end
    end 

    def edit
        wizard = Wizard.find(params[:id])
        wizard.update(name: wizard_params[:name], age: wizard_params[:age], blood: wizard_params[:blood])
        render json: WizardSerializer.new(wizard).to_serialized_json
    end
    private

    def wizard_params
        params.permit(:password, :password_confirmation, :name, :age, :blood, :image)
    end 
end
