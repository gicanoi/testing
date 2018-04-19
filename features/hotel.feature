Feature: hotel

	Background:
		Given a new 'chrome' browser

	# POSITIVE

	@ignore
	Scenario: Verify hotel reservation
    Given I navigate to hotels
    When I filter the search by airport transport
    When I submit the search filters
  	Then I get results with airport transport amenity

	# NEGATIVE
