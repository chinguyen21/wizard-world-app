class WizardSerializer

  def initialize(wizard_object)
    @wizard = wizard_object
  end

  def to_serialized_json
    @wizard.to_json(
            :include => {
                :house => {:only => [:name]},
                :books => {:only => [:name]},
                :wand => {:except => [:created_at, :updated_at]},
                :wiz_house => {:only => [:id]}
                    },
            :except => [:created_at, :updated_at]
            )

  end
  
end 

