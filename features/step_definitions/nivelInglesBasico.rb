#Scenario: filter egresades by english level   

Given('I push the {string} button on the left menu of the page') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]"
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

# When(/^I click on the new option button "([^"]*)" $/) do |nivelingles|
#     case nivelingles
#         when "Basico"
#             xpath ="/html/body/div/div/div[4]/div[2]/div/div[1]/a[2]/a/p"
#         when "Intermedio"
#             xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[2]"
#         when "Avanzado"
#             xpath="/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[3]"
#     end
#     find(:xpath, xpath).click
# end

# Examples:
#         | nivelingles   |
#         |   Basico      |
#         |   Intermedio  |
#         |   Avanzado    |

When('I click on the new option button {string}') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[1]/a[2]/a/p"
    find(:xpath, xpath).click
end

Then('I should only see egresades with {string} level of English') do |string|
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[2]/div"
    find(:xpath,  xpath,:text => "Basico")
end


#/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[2]/div

#//*[@id="root"]/div/div[4]/div[2]/div/div[2]/div[1]/div[2]/div