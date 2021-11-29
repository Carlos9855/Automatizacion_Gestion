# Scenario: Download CSV Egresados file          

#   Given I push the "Egresades" button on the left sidebar
Given('I push the {string} button on the left sidebar') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[2]/a/p"
    find(:xpath, xpath).click
end

#   Then I should see the "Egresados" page
Then('I should see the {string} page') do |string|
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/div[1]/h2/div').text.should == "Lista Egresades"
    
end

#   When I click the "Importar" button on the right 
When('I click the {string} button on the right') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/div[4]/div[2]/div/button"
    find(:xpath, xpath).click
end

#   And I press the "Descargar Ejemplo" button on the modal
When('I press the {string} button on the modal') do |string|
    xpath = "/html/body/div[2]/div/table/button/a"
    find(:xpath, xpath).click
end

#   Then a CSV file with the filename "example5bb6763d3.csv" should be downloaded 
Then('a CSV file with the filename {string} should be downloaded') do |string|
    expect(page).to have_link('Descargar Ejemplo', href: "/static/media/example.5bb676d3.csv" )    
end

 