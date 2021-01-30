class CreateWizHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :wiz_houses do |t|
      t.integer :wizard_id
      t.integer :house_id 

      t.timestamps
    end
  end
end
