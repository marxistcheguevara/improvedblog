class Post < ActiveRecord::Base
	#attr_accessible :title, :body, :image, :category_id, :author_id, :created_at 
	belongs_to :category
	belongs_to :author
	
	

#	def self.search(search)
 # 		if search
  #  		find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  	#	else
    #		find(:all)
  	#	end
	#end

end
 
