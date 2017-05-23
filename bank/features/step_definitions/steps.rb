Given /^I have disposited (\d+) euro in my acount$/ do |amount|
	Account.new(amount.to_i)
end
When /^I request (\d+) euro$/ do |amount|
	pending("How do we simulate cash being requested?")
end
Then /^(\d+) euro should be dispensed$/ do |amount|
	pending("How do we validate that cash has been dispensed")
end