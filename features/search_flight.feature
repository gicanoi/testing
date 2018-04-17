Feature: search_flight

	Background:
		Given a new 'chrome' browser
	
	# POSITIVE

	@ignore 
	Scenario: Verify simple search
		Given I navigate to homepage
		When I insert a valid time range 
		And I insert 'Madrid' as destination
		And I click Search button
        Then I see the flights available to go to 'Madrid' in the corresponding dates

	# NEGATIVE
	
	