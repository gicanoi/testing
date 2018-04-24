Feature: hotel

	Background:
		Given a new 'chrome' browser

	# POSITIVE

	@test_case
	Scenario: Verify hotel search
    Given I navigate to hotels
    When I filter the search by 'Airport Transport'
    When I submit the search filters
  	Then I get results with 'Airport Transport' amenity

	# NEGATIVE
