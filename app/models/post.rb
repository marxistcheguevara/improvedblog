class Post < ActiveRecord::Base
	#attr_accessible :title, :body, :image, :category_id, :author_id, :created_at 
	belongs_to :category
end
 
