#Scenario: filter egresades by english level   

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

#Then I should only see egresades with "<nivelingles>" level of English
Then('I should only see egresades with {string} level of English') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[7]"
    find(:xpath,  xpath,:text => "Basico")
end
