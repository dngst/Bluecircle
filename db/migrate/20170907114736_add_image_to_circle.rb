class AddImageToCircle < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :image, :string
  end
end
