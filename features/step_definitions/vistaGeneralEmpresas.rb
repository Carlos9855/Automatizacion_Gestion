# Scenario: Load Companies View          

#   Given I push the "Empresas" button on menu app
Given('I push the {string} button on menu app') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]/a"
    find(:xpath, xpath).click
end

#   I can see the "Empresas" page
Then('I can see the {string} page') do |string|
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table')
end


