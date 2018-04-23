Feature: contactus

	Background:
		Given a new 'chrome' browser

	# POSITIVE

	@ignore
	Scenario: Verify contact us
		Given I navigate to contact us page
		When I fill the contact form with 'Juan Perez' 'juan.perez@hotmail.com' 'Contact Subject' 'Quiero contactar a PhpTravels'
		Then I click Submit button
		And I see 'Message Sent Successfully'

	# NEGATIVE
