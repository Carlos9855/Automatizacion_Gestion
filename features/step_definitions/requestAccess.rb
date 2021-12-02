# Scenario: Request Access

# Given I click the "Solicitar" button
Given('I select the {string} button') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[3]/button"
    find(:xpath, xpath).click
end 

# When I fill in the "Motivo" field with "Solcito acceso a la página para poder utilizarla. Esto es una prueba automática"
When('I fill in the {string} field with {string}') do |string, string2|
    fill_in 'motivo', :with => "Solcito acceso a la página para poder utilizarla. Esto es una prueba automática"
    sleep 2
end

# And I press the "Solicitar" button
And('I grip the {string} button') do |string|
    xpath = "/html/body/div[2]/div/div[2]/form/button[2]"
    find(:xpath, xpath).click
end 

# Then I should have requested access successfully and a message is displayed   
Then('I should have requested access successfully and a message is displayed') do
    find(:xpath,"/html/body/div/div/div[2]/div")
end



  
