class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :body
      t.string :image_url

      t.timestamps
    end
  end
end
