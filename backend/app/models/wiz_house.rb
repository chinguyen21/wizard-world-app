class WizHouse < ApplicationRecord
    belongs_to :wizard
    belongs_to :house

    validates :wizard_id, uniqueness: true

end



