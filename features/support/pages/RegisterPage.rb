
class RegisterPage 
    
    SUBMIT_BUTTON = { xpath: '//*[@id="headersignupform"]/div[9]/button' }
    NAME_INPUT={xpath: '//*[@id="headersignupform"]/div[3]/input'}
    LASTNAME_INPUT={xpath: '//*[@id="headersignupform"]/div[4]/input'}
    MOBILE_INPUT={xpath: '//*[@id="headersignupform"]/div[5]/input'}
    EMAIL_INPUT={xpath: '//*[@id="headersignupform"]/div[6]/input'}
    PASSWORD_INPUT={xpath: '//*[@id="headersignupform"]/div[7]/input'}
    CONFIRM_PASSWORD_INPUT={xpath: '//*[@id="headersignupform"]/div[8]/input'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def click_submit 
        browser.find_element(SUBMIT_BUTTON).click
    end 
    
    def fill(field, value)
        browser.find_element(field).send_keys(value)
    end

    def loaded?
        browser.title.include?('Register')
    end

end