class User < ActiveRecord::Base
	has_many :messages
	attr_accessible :username
end