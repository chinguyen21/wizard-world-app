class AddEmailPasswordToWizard < ActiveRecord::Migration[6.1]
  def change
    add_column :wizards, :password_digest, :string
  end
end
