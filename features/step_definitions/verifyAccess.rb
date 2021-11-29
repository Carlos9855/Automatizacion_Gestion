# Scenario: Verify Access    

#Given I push the "Verificar Acceso" button 
Given('I push the {string} button') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button"
    find(:xpath, xpath).click
end

#Then I should see the message "!Bienvenide!" 
Then('I should see the message {string}') do |string|
    message = 'Bienvenide'
    find(:xpath, "/html/body/div/div/div[4]/div[2]/div/div[2]/div/h1", :text => message)
end