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



