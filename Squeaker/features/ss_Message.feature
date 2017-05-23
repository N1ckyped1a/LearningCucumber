Feature: See messages
	Scenario: See another user's messages
		Given there is a User
		And the User has posted the message "This is my message"
		When I visit the page for the user
		Then I should see "This is my message"