#Scenario: filter egresades by english level   

Given('I push the {string} button on the left menu of the page') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]/a"
    find(:xpath, xpath).click
end

When('I see the {string} table on companies page') do |string| 
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table')
    
end

And('I click the filter button with the text {string}') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]"
    find(:xpath, xpath).click
end

And('I press the button with label {string} on the new options view') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]/div[2]/div[3]/div[1]"
    find(:xpath, xpath).click
end
# When I click on the new option button "Basico"
When("I click on the new option button {string}") do |string|
    counter = 1

    xpath_base_name = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]' 

    xpath_base_name1 = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]'      
    xpath_base_name2 = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]'      
    xpath_base_name3 = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]'      

    find(:xpath, xpath_base_name % [counter]).click
    counter += 1 

end


Then('I should only see egresades with {string} level of English') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[7]"
    find(:xpath,  xpath,:text => "Basico")
end
