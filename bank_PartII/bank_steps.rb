Given /^I have \€(\d+) in my account$/ do |amount|
	#TODO: code goes here
	Account.new(amount.to_i)
end

#de "." zorgt ervoor dat je eigenlijk checkt op een random waarden
#hier kijken we dus op een getal met lengte drie
#nadeel is wel dat we op deze puntjes ook letters kunnen krijgen
Given /^I have \€(...) in my account/ do |amount|
	#TODO: code goes here
end

#Wat als we nu een kleinere of grotere waarden willen??
#--> Modifier lost dit probleem op
#nadeel hier is ook weer dat je onlogische waardes kan toevoegen
#(zoals, €1 en een komkommer)
Given /^I have \€(.*) in my account/ do |amount|
	#TODO: code goes here
end

#Dit lossen we nu op met het "[]"
Given /^I have \€([0123456789]*) in my account/ do |amount|
	#TODO: code goes here
end
#of
Given /^I have \€([0-9]*) in my account/ do |amount|
	#TODO: code goes here
end