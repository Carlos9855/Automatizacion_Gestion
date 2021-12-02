# Scenario: Verify Access    

#Then I see the message "!Bienvenide!" 
Then('I see the message {string}') do |string|
    message = 'Bienvenide'
    find(:xpath, "/html/body/div/div/div[4]/div[2]/div/div[2]/div/h1", :text => message)
end