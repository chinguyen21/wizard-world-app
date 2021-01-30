class WizHouseSerializer

  def initialize(wiz_house_object)
    @wiz_house = wiz_house_object
  end

  def to_serialized_json
    @wiz_house.to_json(:include => {
          :house => {:only => [:name]}
        }, except: [:created_at, :updated_at]   
        )
  end


end