
class HotelsPage
    
        AMENITY_FILTER = { css: '[id="Airport Transport"]' }
        SEARCH_BUTTON = {css: '#searchform'}
        LIST_ITEMS = {css: 'h4.list_title'}
        AMENITIES_ICONS = {css: '[alt="Airport Transport"]'}
    
        attr_reader :browser
    
        def initialize(browser)
            @browser = browser
        end
    
        def filter
            browser.find_element(AMENITY_FILTER).click
            browser.find_element(SEARCH_BUTTON).click
        end
    
        def loaded?
            browser.title.include?('Hotels Listings')
        end

        def verifyResults
            browser.find_element(LIST_ITEMS).count == browser.find_element(AMENITIES_ICONS).count
        end
    end
    