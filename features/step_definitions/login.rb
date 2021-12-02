#START -> BACKGROUND

#Given I am on the Nahual homepage
Given(/^I am on the Nahual homepage$/) do
    page.driver.browser.manage.window.maximize
    visit ('/')
end

# # And I click the Iniciar Sesion button
# And('I click the {string} button') do |string|
#     xpath = "/html/body/div/div/div[4]/div[2]/div/button"
#     find(:xpath, xpath).click
# end

# # And I click on the Iniciar con Google button
# And('I press the {string} button') do |string| 
#     xpath = "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]"
#     find(:xpath, xpath).click
# end

# And I enter my email
Given(/^I enter my email$/) do
    fill_in 'identifier', :with => ENV['EMAIL']
    sleep 2
end

#And I hit the "Siguiente" button
# And('I hit the {string} button') do |string|
#     xpath = "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"
#     find(:xpath, xpath).click
# end

# And I enter my password
Given(/^I enter my password$/) do
    fill_in 'password', :with => ENV['PSW']
    sleep 2
end
#   END -> BACKGROUND
