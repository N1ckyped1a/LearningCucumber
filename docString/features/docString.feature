Feature: Using a longer text
	
	Scenario: Ban Unscrupulous Users
		Wiven I behave unscrupulously
		Then I receive a mail containing the following text:
		  """
	   	  Dear Sir, 
		
		  Your account privileges have been revoked due to your unscrupulous
		  behavior.
		
		  Sincerely, 
		  The Management
		  """
		And my account should be locked