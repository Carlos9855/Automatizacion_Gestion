# Scenario: Download CSV Egresados file          

#   When I see the "Egresados" page
When('I see the {string} page') do |string|
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/div[1]/h2/div').text.should == "Lista Egresades"
    
end

#   Then a CSV file with the filename "example5bb6763d3.csv" should be downloaded 
Then('a CSV file with the filename {string} should be downloaded') do |string|
    expect(page).to have_link('Descargar Ejemplo', href: "/static/media/example.5bb676d3.csv" )    
       
end

 