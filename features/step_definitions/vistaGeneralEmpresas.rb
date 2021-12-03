# Scenario: Load Companies View          

#   I can see the "Empresas" page
Then('I can see the {string} page') do |string|
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table')
end


