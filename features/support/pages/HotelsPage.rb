class HotelsPage
        SEARCH_BUTTON = {css: '#searchform'}
        LIST_ITEMS = {css: 'h4.list_title'}
        AMENITIES_ICONS = {css: '[alt="Airport Transport"]'}
    
        attr_reader :browser
    
        def initialize(browser)
            @browser = browser
            @browser.manage.window.maximize
        end
    
        def filter(amenity)
            amenity = @browser.find_element({ css: '[id="'+amenity+'"] + ins' })
            amenity.location_once_scrolled_into_view
            amenity.click
        end

        def submit
            browser.find_element(SEARCH_BUTTON).click
        end
    
        def loaded?
            browser.title.include?('Hotels Listings')
        end
        
        def getListItemsCount
            browser.find_elements(LIST_ITEMS).size
        end

        def getListItemsWithAmenityCount(amenity)
            browser.find_elements({css: '[alt="'+amenity+'"]'}).size
        end
    end
    