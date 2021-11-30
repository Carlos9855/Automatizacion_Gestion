# #START -> BACKGROUND

# #Given I am on the Nahual homepage
# Given(/^I am on the Nahual homepage$/) do
#     page.driver.browser.manage.window.maximize
#     visit ('/')
# end

# # When I click on the Iniciar Sesion button
# When('I click the {string} button') do |string|
#     xpath = "/html/body/div/div/div[4]/div[2]/div/button"
#     find(:xpath, xpath).click
# end

# # When I click on the Iniciar con Google button
# When('I press the {string} button') do |string|
#     xpath = "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]"
#     find(:xpath, xpath).click
# end

# # And I enter my email
# Given(/^I enter my email$/) do
#     fill_in 'identifier', :with => ENV['EMAIL']
#     sleep 2
# end

# #When I hit the "Siguiente" button
# When('I hit the {string} button') do |string|
#     xpath = "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"
#     find(:xpath, xpath).click
# end

# # And I enter my password
# Given(/^I enter my password$/) do
#     fill_in 'password', :with => ENV['PSW']
#     sleep 2
#     # fill_in 'password', :with => ENV['PSW']
# end

# #When I tap the "Siguiente" blue button
# When('I tap the {string} blue button') do |string|
#     xpath = "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"
#     find(:xpath, xpath).click
# end

# Then('I should be logged in') do
#     sleep 25
#     puts "You are logged in"  # Write code here that turns the phrase above into concrete actions
#     name = 'RICARDO SANDI SUAREZ'
#     find(:xpath, '/html/body/div/div/div[4]/div[1]/div/div/div/span', :text => name)
# end

# #   END -> BACKGROUND

# Scenario: Logout

# Given I click the arrow button next to my username 
Given('I click the arrow button next to my username') do
    xpath = "/html/body/div/div/div[4]/div[1]/div/div/div/i"
    find(:xpath, xpath).click
end
# When I click "Cerrar Sesión" button        
When('I click {string} button') do |string|
    xpath = "/html/body/div/div/div[4]/div[1]/div/div/div/div/div/span"
    find(:xpath, xpath).click
end
# Then I should logout form the system 
Then('I should logout form the system') do
    message = 'Para continuar debe iniciar sesión.'
    find(:xpath, "/html/body/div/div/div[4]/div[2]/div/div[2]/h4", :text => message)
end



