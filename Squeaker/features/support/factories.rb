require 'factory_girl'

FactoryGirl.define do
	factory :user do |f|
		f.username 'testuser'
	end
	
	factory :message do |f|
		f.assiciation :user
		f.content 'Test message content'
	end	
end