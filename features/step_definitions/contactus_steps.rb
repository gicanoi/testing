
When(/^I get redirected to the contact us page$/) do
		begin
				sleep(2)
				fail "We are not in Contact Us Page!" unless @contactUsPage.loadedContactUs?
		rescue => e
				fail "Error opening page. Error : #{e}"
		end
end

When(/^I fill the form with '(.*)' '(.*)' '(.*)' '(.*)'$/) do |nom, mail, subject, msg|
	begin
		@contactUsPage.fill(nom, mail, subject, msg)
	rescue => e
		fail "Error inserting values. Error: #{e}"
	end
end

When(/^I click Submit button$/) do
    begin
        @contactUsPage.click_submit
    rescue => e
        fail "Error clicking submit button. Error: #{e}"
    end
end

When(/^I see '(.*)'$/) do |msg|
		begin
				@contactUsPage.seeMessage(msg)
		rescue => e
				fail "Error sending message. Error: #{e}"
		end
end

#Then I get redirected to the account page
#When I see my name
