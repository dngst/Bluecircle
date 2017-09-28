class AddAgeToCircles < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :age, :integer
  end
end
