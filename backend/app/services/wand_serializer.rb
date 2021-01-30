class WandSerializer

  def initialize(wand_subject)
    @wand = wand_subject
  end

  def to_serialized_json
    @wand.to_json(
            :except => [:created_at, :updated_at]
            )

  end
  
end 

