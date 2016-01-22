class Comment < ActiveRecord::Base
	validates :text
	belongs_to :professor
end
