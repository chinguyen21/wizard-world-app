class HouseSerializer
  def initialize(house_object)
    @house = house_object
  end

  def to_serialized_json
    @house.to_json(
            :include => {:wizards => {
                :except => [:created_at, :updated_at, :password_digest]}},
            :except => [:created_at, :updated_at]
        ) 
  end

end