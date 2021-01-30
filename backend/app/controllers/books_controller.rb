class BooksController < ApplicationController

    def index
        books = Book.all 
        render json: BookSerializer.new(books).to_serialized_json
    end 

    def show 
        book = Book.find(params[:id])
        render json: BookSerializer.new(book).to_serialized_json
    end
end
