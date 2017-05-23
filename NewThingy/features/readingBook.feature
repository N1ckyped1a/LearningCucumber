Feature: This is just for testing new things
	@pageOne
	Scenario: eerste pagina lezen
		Given I have a book to read, named <book>
		When Page <page> is opened 
		Then I read the first page

	@pageTwo
	Scenario: tweede pagina lezen
		Given I have a book to read, named <book>
		And I have read the previous page
		When the previous page is still opened 
		Then I turn to the next page 
		And I read the page
	
	@pageThree
	Scenario: derde pagina lezen
		Given I have a book to read, named <book>
		And I have read the previous page
		When the previous page is still opened 
		Then I turn to the next page 
		And I read the page@page
		
	@pageFour
	Scenario: vierde pagina lezen
		Given I have a book to read, named <book>
		And I have read the previous page
		When the previous page is still opened 
		Then I turn to the next page 
		And I read the page