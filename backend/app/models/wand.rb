class Wand < ApplicationRecord
  has_many :wiz_wands
  has_many :wizards, through: :wiz_wands
end
