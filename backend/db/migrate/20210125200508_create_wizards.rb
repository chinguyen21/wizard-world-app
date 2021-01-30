class CreateWizards < ActiveRecord::Migration[6.1]
  def change
    create_table :wizards do |t|
      t.string :name 
      t.integer :age 
      t.string :image 
      t.string :blood 

      t.timestamps
    end
  end
end
