class CreateChild < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.column :name, :string
      t.column :age,  :integer
      t.column :home, :string
      t.column :school, :string
      t.column :aspirations, :text
      t.column :siblings, :string


      t.timestamps
      end
  end
end
