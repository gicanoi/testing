Feature: register

	Background:
		Given a new 'chrome' browser
	
	# POSITIVEEE


	@test_case 
	Scenario: Verify register 
		Given I navigate to register
		When I insert a valid name
		And I insert a valid last name 
		And I insert a valid mobile number
		And I insert a valid email
		And I insert a valid password
		And I insert a confirmation password 
		And I click Sign Up button
        Then I get redirected to the account page
		And I see my name

	# NEGATIVE
	
	