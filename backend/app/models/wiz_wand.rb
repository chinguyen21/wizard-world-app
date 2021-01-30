class WizWand < ApplicationRecord
  belongs_to :wizard
  belongs_to :wand

  validates :wizard_id, uniqueness: true
end
