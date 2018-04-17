
When(/^I fill the form with '(.*)' '(.*)' '(.*)' '(.*)' '(.*)' '(.*)'$/) do |nom1, nom2, cel, mail, pass, conf|
	begin
		@registerPage.fill(nom1, nom2, cel, mail, pass, conf)
	rescue => e
		fail "Error inserting values. Error: #{e}"
	end
end

When(/^I click Sign Up button$/) do
    begin
        @registerPage.click_submit
    rescue => e
        fail "Error clicking submit button. Error: #{e}"
    end
end

When(/^I get redirected to the account page$/) do
		begin
				sleep(5)
				fail "We are not in Account Page!" unless @registerPage.loadedAccount?
		rescue => e
				fail "Error opening page. Error : #{e}"
		end
end

When(/^I see my name '(.*)'$/) do |nom|
		begin
				@registerPage.seeMyName(nom)
		rescue => e
				fail "Error clicking submit button. Error: #{e}"
		end
end

#Then I get redirected to the account page
#When I see my name
