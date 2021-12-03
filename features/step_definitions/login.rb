#Given I am on the Nahual homepage
Given(/^I am on the Nahual homepage$/) do
    page.driver.browser.manage.window.maximize
    visit ('/')
end

# And I enter my email
Given(/^I enter my email$/) do
    fill_in 'identifier', :with => ENV['EMAIL']
    sleep 2
end

# And I enter my password
Given(/^I enter my password$/) do
    fill_in 'password', :with => ENV['PSW']
    sleep 2
end

