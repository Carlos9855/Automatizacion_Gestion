#   Given I press the "Cursos" button on the left sidebar
Given('I press the {string} button on the left sidebar') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[3]/a"
    find(:xpath, xpath).click
end

When('I click the {string} tab') do |string|
    if expect(page).to have_link('Alumnes', href: "/cursos/alumnes")
        click_link('Alumnes')
    end    
  end
  
  Then('I see the {string} list') do |string|
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/h2/div').text.should == "Lista Alumnes"
                 
  end


