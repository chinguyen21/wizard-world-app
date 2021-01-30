class BookSerializer

  def initialize(book_subject)
    @book = book_subject
  end

  def to_serialized_json
    @book.to_json(
            :except => [:created_at, :updated_at]
            )

  end
  
end 

