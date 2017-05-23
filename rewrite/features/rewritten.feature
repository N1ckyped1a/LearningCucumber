Feature: Clean writing 
	
	Scenario Outline: Create an invoice
		Given I am a signed in user with admin role
		And a client "Test Client" exists with the name "Test Client"
		And a project "Test Project" exists with the following:
			| Name   | Test Project |
			| Client | Test Client  |
		And a issue "Test Issue" exists with:
			| Project | Test Project |
			| Name	  | Test Issue   |
		And a work_unit "Test Work Unit" exists with:
			| Issue 	   | Test Issue |
			| Completed_on | 2011-08_24 |
			| Hours		   | 7,5   		|
		And I am on the admin invoices page 
		Then I should see "Test Client"
		And I follow "Test Client"
		And I fill in "Invoice_id" with "abc"
		And I press "Submit"
		Then I am on the admin invoices page
		And I should not see "Test Client"		
		
___________________________________________________________________________		
		Examples: Test Project
			| Name   	   | Client 	 |
			| Test Project | Test Client |
		
		Examples: Test Issue
			| Project  	   | Name 	 	|
			| Test Project | Test Issue |
			
		Examples: Test Work Unit
			| Issue  	 | Completed_on | Hours |
			| Test Issue | 2011-08_24   | 7,5	|
				