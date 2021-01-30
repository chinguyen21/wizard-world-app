class CreateWands < ActiveRecord::Migration[6.1]
  def change
    create_table :wands do |t|
      t.string :name
      t.string :wood
      t.integer :length
      
      t.timestamps
    end
  end
end
