class AddImageToWand < ActiveRecord::Migration[6.1]
  def change
     add_column :wands, :image, :string
  end
end
