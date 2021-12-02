When('I click the {string} tab') do |string|
    if expect(page).to have_link('Alumnes', href: "/cursos/alumnes")
        click_link('Alumnes')
    end    
end
  
Then('I see the {string} list') do |string|
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/h2/div').text.should == "Lista Alumnes"
                 
end


