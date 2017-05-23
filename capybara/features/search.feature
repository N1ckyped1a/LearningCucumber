@javascript
Feature: Search
	Scenario: find messages by content
		Given a User has posted the following messages:
		| Content				|
		| I am making dinner	|
		| I just woke up		|
		| I am going to work	|
		When I searchfor "I am" in the search field
		Then the results should be:
		| Content				|
		| I am making dinner	|
		| I am going to work	|
		