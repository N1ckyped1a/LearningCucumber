class Message < ActiveRecord::Base
	belongs_to :user
	
	def self.like(content)
		content.nil? ? [] : where(['content LIKE?', "%#{content}%"])
	end
	attr_accessible :content, :user_id
end