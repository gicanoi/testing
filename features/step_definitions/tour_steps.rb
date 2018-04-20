
When(/^I get redirected to Tours Page$/) do
	begin
		@tourPage.loadedTours?
	rescue => e
		fail "Error redirecting to tours page. Error: #{e}"
	end
end

When(/^I select History Tours$/) do
	begin
		@tourPage.selectHistory
	rescue => e
		fail "Error selecting History. Error: #{e}"
	end
end


When(/^I get redirected to page with History tours$/) do
	begin
		@tourPage.seeTourType
	rescue => e
		fail "Error redirecting to history tours page. Error: #{e}"
	end
end

When(/^I click Details button$/) do
    begin
        @tourPage.click_details
    rescue => e
        fail "Error clicking Details button. Error: #{e}"
    end
end


When(/^I click Book$/) do
		begin
				@tourPage.click_book
		rescue => e
				fail "Error clicking Book. Error: #{e}"
		end
end

When(/^I get redirected to Booking Summary$/) do
		begin
				@tourPage.seeSummary()
		rescue => e
				fail "Error sending message. Error: #{e}"
		end
end


When(/^I fill the form with '(.*)' '(.*)' '(.*)' '(.*)' '(.*)' '(.*)' and submit$/) do |nom1, nom2, mail1, mail2, cel, dir|
		begin
				@tourPage.fillSubmit(nom1, nom2, mail1, mail2, cel, dir)
		rescue => e
				fail "Error filling form and submitting it. Error: #{e}"
		end
end

When(/^I can see '(.*)'$/) do |msg|
		begin
				sleep(5)
				@tourPage.seeMessage(msg)
		rescue => e
				fail "Error seeing booking code. Error: #{e}"
		end
end

#Then I get redirected to the account page
#When I see my name
