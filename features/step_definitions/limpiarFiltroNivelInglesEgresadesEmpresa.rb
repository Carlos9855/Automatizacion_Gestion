#Scenario: clean english level filter of egresades table on companies 

#When I click on the "Basico" English level button 
When('I click on the {string} English level button') do |string|
    if string == "Basico"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[1]"
    end

    find(:xpath, xpath).click
end

#Then I should only see egresades with "Basico" english level 
Then('I should only see egresades with {string} english level') do |string|
    if string == "Basico"
        xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[7]"
    end
    find(:xpath,  xpath,:text => string)
end

#Then I should see egresades with diferent english level
Then('I should see egresades with diferent english level') do
    page.should have_no_content("Quitar Todos")
end