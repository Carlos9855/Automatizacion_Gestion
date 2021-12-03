#Scenario: filter egresades by english level   
# When I click on the new option button "Basico"
When("I click on the new option button {string}") do |string|
    find('span', text: string).click
end
#Then I should only see egresades with "<nivelingles>" level of English
Then('I should only see egresades with {string} level of English') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[7]"
    find(:xpath,  xpath,:text => string)
end

