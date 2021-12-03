#Scenario: clean nodes filter of egresades table on companies   

Then('I should see egresades from different nodes') do
    page.should have_no_content("Quitar Todos")
end


