class AddPledgeToCircles < ActiveRecord::Migration[5.1]
  def change
    add_column :circles, :pledge, :integer
  end
end
