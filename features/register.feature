Feature: register

	Background:
		Given a new 'chrome' browser

	# POSITIVE

	@test_case
	Scenario: Verify register
		Given I navigate to register
		When I fill the form
		When I click Sign Up button
  	Then I get redirected to the account page
		And I see my name

	# NEGATIVE
