class AddPasswordToHouse < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :password_digest, :string
  end
end
