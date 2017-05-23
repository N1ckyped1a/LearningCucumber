Feature: Cash Withdrawal
	Scenario: Succesful withdrawal from an acount in credit
		Given I have disposited 100 euro in my acount
		When I request 20 euro
		Then 20 euro should be dispensed