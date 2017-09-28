class RemoveClassFromCircles < ActiveRecord::Migration[5.1]
  def change
    remove_column :circles, :class, :integer
  end
end
