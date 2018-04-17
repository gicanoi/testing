
When(/^I fill the form$/) do
	begin
		@registerPage.fill('Juan', 'Perez', '098123456', 'jaaanmurz.perez@ucu.edu.uy', 'Pa$$w0rd', 'Pa$$w0rd')
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

When(/^I see my name$/) do
		begin
				@registerPage.seeMyName('Juan', 'Perez')
		rescue => e
				fail "Error clicking submit button. Error: #{e}"
		end
end

#Then I get redirected to the account page
#When I see my name
