class Walk < ActiveRecord::Base
	belongs_to :dogs
	validates :title, presence: true
	validates :location, presence: true
end
