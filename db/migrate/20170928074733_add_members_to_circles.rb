class AddMembersToCircles < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :members, :integer
  end
end
