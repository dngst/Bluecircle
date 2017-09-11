class AddPictureToChildren < ActiveRecord::Migration[5.1]
  def change
    add_column :children, :picture, :string
  end
end
