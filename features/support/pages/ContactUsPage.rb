
class ContactUsPage

    SUBMIT_BUTTON = { css: 'input[name="submit_contact"]' }
    NAME_INPUT={css: 'input[name="contact_name"]'}
    EMAIL_INPUT={css: 'input[name="contact_email"]'}
    SUBJECT_INPUT={css: 'input[name="contact_subject"]'}
    MESSAGE_INPUT={css: '[name="contact_message"]'}
    SUCCESS_MESSAGE= {css: '.alert-success'}

    attr_reader :browser

    def initialize(browser)
        @browser = browser
    end


    def loaded?
        browser.title.include?('Contact')
    end

    def fill(nom, mail, subject, msg)
        browser.find_element(NAME_INPUT).send_keys(nom)
        browser.find_element(EMAIL_INPUT).send_keys(mail)
        browser.find_element(SUBJECT_INPUT).send_keys(subject)
        browser.find_element(MESSAGE_INPUT).send_keys(msg)
    end

    def click_submit
        browser.find_element(SUBMIT_BUTTON).click
    end

    def seeMessage(msg)
      (msg) == browser.find_element(SUCCESS_MESSAGE).text()
    end

end
