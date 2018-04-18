
class RegisterPage

    SUBMIT_BUTTON = { css: '.signupbtn' }
    NAME_INPUT={css: 'input[name="firstname"]'}
    LASTNAME_INPUT={css: 'input[name="lastname"]'}
    #LASTNAME_INPUT={xpath: '//*[@id="headersignupform"]/div[4]/input'}
    #input[name="phone"]
    MOBILE_INPUT={css: 'input[name="phone"]'}
    EMAIL_INPUT={css: 'input[name="email"]'}
    PASSWORD_INPUT={css: 'input[name="password"]'}
    CONFIRM_PASSWORD_INPUT={css: 'input[name="confirmpassword"]'}

    NAME_FIELD= {css: 'h3[class="RTL"]'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end

    def click_submit
        browser.find_element(SUBMIT_BUTTON).click
    end

    def fill(nom1, nom2, cel, mail, pass, conf)
        browser.find_element(NAME_INPUT).send_keys(nom1)
        browser.find_element(LASTNAME_INPUT).send_keys(nom2)
        browser.find_element(MOBILE_INPUT).send_keys(cel)
        browser.find_element(EMAIL_INPUT).send_keys(mail)
        browser.find_element(PASSWORD_INPUT).send_keys(pass)
        browser.find_element(CONFIRM_PASSWORD_INPUT).send_keys(conf)
    end

    def loaded?
        browser.title.include?('Register')
    end

    def loadedAccount?
      browser.title.include?('My Account')
    end

    def seeMyName(nom)
      ("Hi, " + nom) == browser.find_element(NAME_FIELD).text()
    end

end
