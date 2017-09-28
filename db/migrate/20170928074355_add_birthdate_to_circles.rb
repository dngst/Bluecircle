class AddBirthdateToCircles < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :birthdate, :varchar
  end
end
