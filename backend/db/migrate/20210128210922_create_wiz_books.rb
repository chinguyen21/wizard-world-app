class CreateWizBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :wiz_books do |t|
      t.integer :book_id
      t.integer :wizard_id
      t.timestamps
    end
  end
end
