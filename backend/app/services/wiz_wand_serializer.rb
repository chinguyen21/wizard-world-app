class WizWandSerializer

  def initialize(wiz_wand_object)
    @wiz_wand = wiz_wand_object
  end

  def to_serialized_json
    @wiz_wand.to_json(:include => {
          :wand => {:only => [:name]}
        }, except: [:created_at, :updated_at]   
        )
  end


end