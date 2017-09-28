class AddGenderToCircles < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :gender, :string
  end
end
