When('I tap on the new option level english button basico') do
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[1]"
    find(:xpath, xpath).click
end

Then('I should only see egresades with {string} english level') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[7]"
    find(:xpath,  xpath,:text => string)
end

Then('I should see egresades with diferent english level') do
    page.should have_no_content("Quitar Todos")
end