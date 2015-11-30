class Post < ActiveRecord::Base
	acts_as_votable
 	belongs_to :dog
  	acts_as_commentable
  	has_many :comments, :as => :commentable
  	validates :content, presence: true
end
