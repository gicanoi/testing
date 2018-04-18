Feature: contactus

	Background:
		Given a new 'chrome' browser

	# POSITIVE

	@test_case
	Scenario: Verify register
		Given I navigate to contact us page
		Then I get redirected to the contact us page
		When I fill the form with 'Juan Perez' 'juan.perez@hotmail.com' 'Contact Subject' 'Quiero contactar a PhpTravels'
		Then I click Submit button
		And I see 'Message Sent Successfully'

	# NEGATIVE
