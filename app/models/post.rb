class Post < ActiveRecord::Base
	acts_as_votable
 	belongs_to :dog
  
end
