Given(/^a new '(.*)' browser$/) do |browserName|
	begin
		case browserName
			when "firefox"
				$browser = Selenium::WebDriver.for :firefox
			when "ie"
				$browser = Selenium::WebDriver.for :ie
			when "edge"
				$browser = Selenium::WebDriver.for :edge
			else
				$browser = Selenium::WebDriver.for :chrome
		end
		$browser.manage.window.maximize
	rescue => e
		fail "Error opening browser. Error : #{e}"
	end
end

Given(/^I navigate to homepage$/) do
	begin
        $browser.navigate.to "https://www.phptravels.net/"
        @page = HomePage.new $browser
		fail "We are not in HomePage!" unless @page.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Given(/^I navigate to register$/) do
	begin
        $browser.navigate.to "https://www.phptravels.net/register"
				@registerPage = RegisterPage.new $browser
		fail "We are not in Register Page!" unless @registerPage.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Given(/^I navigate to contact us page$/) do
	begin
        $browser.navigate.to "https://www.phptravels.net/contact-us"
				@contactUsPage = ContactUsPage.new $browser
		fail "We are not in Contact Page!" unless @contactUsPage.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Given(/^I navigate to hotels$/) do
	begin
        $browser.navigate.to "https://www.phptravels.net/hotels"
				@hotelsPage = HotelsPage.new $browser
		fail "We are not in Hotels Page!" unless @hotelsPage.loaded?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end

Given(/^I navigate to the Tours Page$/) do
	begin
        $browser.navigate.to "https://www.phptravels.net/tours"
        @tourPage = TourPage.new $browser
		fail "We are not in Tours Page!" unless @tourPage.loadedTours?
	rescue => e
		fail "Error opening page. Error : #{e}"
	end
end
