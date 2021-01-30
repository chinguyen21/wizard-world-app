class House < ApplicationRecord
    has_many :wiz_houses
    has_many :wizards, through: :wiz_houses

    validates :name, uniqueness: true

    has_secure_password
end
