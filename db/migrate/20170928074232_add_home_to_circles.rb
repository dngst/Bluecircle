class AddHomeToCircles < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :home, :string
  end
end
