class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
	  t.string :title
	  t.text :body
	  t.string :image
	  t.integer :category_id
	  t.integer :author_id
	  t.integer :featured, :limit =>1
	  
      t.timestamps null: false
    end
  end
end
