Given (/^a User has posted the following messages:$/) do |messages|
	user = FactoryGirl.create(:user)
	messages_attributes = messages.hashes.map do |messages_attrs|
		messages_attrs.merge({:user => user})
	end
	Message.create!(messages_attributes)
end
