class Wizard < ApplicationRecord
    
    has_one :wiz_house
    has_one :house, through: :wiz_house

    has_many :wiz_books
    has_many :books, through: :wiz_books

    has_one :wiz_wand
    has_one :wand, through: :wiz_wand

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :password, length: {minimum:6}

    has_secure_password

end
