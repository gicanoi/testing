When(/^I fill the contact form with '(.*)' '(.*)' '(.*)' '(.*)'$/) do |nom, mail, subject, msg|
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
