class Topic < ApplicationRecord
	#Validation of Title
	validates_presence_of :title


	# Relationshop with blog.rb
	has_many :blogs
end
