When(/^I insert a valid name$/) do
	begin
		@registerPage.fill(NAME_INPUT,'John')
	rescue => e
		fail "Error inserting name. Error: #{e}"
	end
end
When(/^I insert a valid last name$/) do
    begin
        @registerPage.fill(LASTNAME_INPUT,'Wayne')
    rescue => e
        fail "Error inserting last name. Error: #{e}"
    end
end
When(/^I insert a valid mobile number$/) do
    begin
        @registerPage.fill(MOBILE_INPUT,'098123456')
    rescue => e
        fail "Error inserting mobile number. Error: #{e}"
    end
end
When(/^I insert a valid email$/) do
    begin
        @registerPage.fill(EMAIL_INPUT,'mail@server.ru')
    rescue => e
        fail "Error inserting email. Error: #{e}"
    end
end
When(/^I insert a valid password$/) do
    begin
        @registerPage.fill(PASSWORD_INPUT,'secret')
    rescue => e
        fail "Error inserting password. Error: #{e}"
    end
end
When(/^I insert a confirmation password$/) do
    begin
        @registerPage.fill(CONFIRM_PASSWORD_INPUT,'secret')
    rescue => e
        fail "Error inserting password confirmation. Error: #{e}"
    end
end
When(/^I click Sign Up button$/) do
    begin
        @registerPage.click_submit
    rescue => e
        fail "Error clicking submit button. Error: #{e}"
    end
end

#Then I get redirected to the account page
#When I see my name

