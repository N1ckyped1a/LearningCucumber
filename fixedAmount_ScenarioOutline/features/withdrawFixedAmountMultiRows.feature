Feature: Withdraw Fixed Amount with multiple tables
	The "Withdraw Cash" menu contains several fixed amounts to speed up
	transactions for users.
	
	@afhalen
	Scenario Outline: Withdraw fixed amount
		Given I have <Balance> in my account
		When I choose to withdraw the fixed amount of <Withdrawal>
		Then I should <Outcome> 
		And the balance of my account should be <Remaining>
		
		@pass
		Examples: Succesful withdrawel
			| Balance  | Withdrawal | Outcome 		   | Remaining |
			| 500 euro | 50 euro    | receive 50 euro  | 450 euro  |
			| 500 euro | 100 euro   | receive 100 euro | 400 euro  |
		
		@fail
		Examples: Attempt to withdraw to much
			| Balance  | Withdrawal | Outcome 		   	   | Remaining |
			| 100 euro | 200 euro   | see an error message | 100 euro  |
			| 0 euro   | 50 euro    | see an error message | 0 euro    |
			