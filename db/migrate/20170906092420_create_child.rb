class CreateChild < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.column :name, :string
      t.column :age,  :integer
      t.column :home, :string
      t.column :school, :string
      t.column :aspirations, :text_area
      t.column :siblings, :text_area


      t.timestamps
      end
  end
end
