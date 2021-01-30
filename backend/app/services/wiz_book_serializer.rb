class WizBookSerializer

  def initialize(wiz_book_object)
    @wiz_book = wiz_book_object
  end

  def to_serialized_json
    @wiz_book.to_json(:include => {
          :book => {:only => [:name]}
        }, except: [:created_at, :updated_at]   
        )
  end


end