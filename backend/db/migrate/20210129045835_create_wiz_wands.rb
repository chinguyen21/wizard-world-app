class CreateWizWands < ActiveRecord::Migration[6.1]
  def change
    create_table :wiz_wands do |t|
      t.integer :wizard_id
      t.integer :wand_id

      t.timestamps
    end
  end
end
