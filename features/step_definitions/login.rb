#Given I am on the Nahual homepage
Given(/^I am on the Nahual homepage$/) do
    page.driver.browser.manage.window.maximize
    visit ('/')
end

# When I click on the Iniciar Sesion button
When('I click  the {string} button') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/button"
    find(:xpath, xpath).click
end
# When I click on the Iniciar con Google button
When('I press  the {string} button') do |string|
    xpath = "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]"
    find(:xpath, xpath).click
end
# And I enter my email
Given(/^I enter my email$/) do
    fill_in 'identifier', :with => ENV['EMAIL']
    sleep 2
    # fill_in 'password', :with => ENV['PSW']
end

#When I hit the "Siguiente" button
When('I hit the {string} button') do |string|
    xpath = "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"
    find(:xpath, xpath).click
end

# And I enter my password
Given(/^I enter my password$/) do
    fill_in 'password', :with => ENV['PSW']
    sleep 2
    # fill_in 'password', :with => ENV['PSW']
end

#When I tap the "Siguiente" blue button
When('I tap the {string} blue button') do |string|
    xpath = "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"
    find(:xpath, xpath).click
end

Then('I should be logged in') do
    puts "You are logged in"  # Write code here that turns the phrase above into concrete actions
    name = 'RICARDO SANDI SUAREZ'
    find(:xpath, '/html/body/div/div/div[4]/div[1]/div/div/div/span', :text => name)
end

# loginMessage = 'Access details to demo site'
# find(:xpath, '/html/body/table/tbody/tr[1]/td/h2', :text => loginMessage)


# /html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[1]/div/div[1]/div/div[1]/input