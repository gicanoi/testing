
class TourPage

    HISTORY_TOURS = {xpath: '//*[@id="collapse3"]/div[1]/div[26]/div/ins'}
    FILTER_BUTTON = {css: '[id="searchform"]'}
    TOUR_TYPE = {css: '[data-original-title="History…"]'}
    DETAILS_BUTTON = {css: 'button[class="btn btn-action loader loader btn-block"]'}
    BOOK_BUTTON = {css: 'div[class="col-md-6"] button[type="submit"]'}
    BOOKING_MSG = {xpath: '//*[@id="body-section"]/div[1]/div/div/div[2]/div/span/strong/span/span[1]'}
    NAME_INPUT = {css: 'input[name="firstname"]'}
    LASTNAME_INPUT = {css: 'input[name="lastname"]'}
    EMAIL_INPUT = {css: 'input[name="email"]'}
    EMAIL_CONF = {css: 'input[name="confirmemail"]'}
    PHONE_INPUT = {css: 'input[name="phone"]'}
    ADDRESS_INPUT = {css: 'input[name="address"]'}
    SUBMIT_BUTTON = {css: 'button[name="guest"]'}
    BOOKING_CODE = {xpath: '//*[@id="invoiceTable"]/tbody/tr[2]/td/div[1]/table/tbody/tr/td/div[5]/strong'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def loadedTours?
        browser.title.include?('Tours Listing')
    end

    def selectHistory
        browser.find_element(HISTORY_TOURS).click
        browser.find_element(FILTER_BUTTON).click
    end

    def seeTourType
        ("History…") == browser.find_element(TOUR_TYPE).text()
    end

    def click_details
        browser.find_element(DETAILS_BUTTON).click
    end

    def click_book
        browser.find_element(BOOK_BUTTON).click
    end

    def seeSummary
        ("Booking Summary") == browser.find_element(BOOKING_MSG).text()
    end

    def fillSubmit(nom1, nom2, mail1, mail2, cel, dir)
      browser.find_element(NAME_INPUT).send_keys(nom1)
      browser.find_element(LASTNAME_INPUT).send_keys(nom2)
      browser.find_element(EMAIL_INPUT).send_keys(mail1)
      browser.find_element(EMAIL_CONF).send_keys(mail2)
      browser.find_element(PHONE_INPUT).send_keys(cel)
      browser.find_element(ADDRESS_INPUT).send_keys(dir)
      browser.find_element(SUBMIT_BUTTON).click
    end

    def seeMessage(msg)
        (msg) == browser.find_element(BOOKING_CODE).text()
    end

end
