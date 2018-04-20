Feature: tour

	Background:
		Given a new 'chrome' browser

	# POSITIVE

	@test_case
	Scenario: Verify history tour reservation
		Given I navigate to the Tours Page
		Then I select History Tours
		And I get redirected to page with History tours
		Then I click Details button
		When I click Book
		Then I get redirected to Booking Summary
		When I fill the form with 'Juan' 'Perez' 'juan.perez@gmail.com' 'juan.perez@gmail.com' '098802165' 'Calle Falsa 123' and submit
		And I can see 'Booking Code'

	# NEGATIVE
