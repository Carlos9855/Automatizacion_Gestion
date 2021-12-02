#Scenario: clean nodes filter of egresades table on companies   
And('I press the buton x to close the filter called {string}') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/a"
    find(:xpath, xpath).click
end
  
Then('I should see egresades from different nodes') do
    page.should have_no_content("Quitar Todos")
end


