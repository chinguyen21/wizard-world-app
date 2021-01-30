class Book < ApplicationRecord
    has_many :wiz_books
    has_many :wizards, through: :wiz_books
end
