When('I click the {string} tab') do |string|
    if expect(page).to have_link('Alumnes', href: "/cursos/alumnes")
        click_link('Alumnes')
    end    
end



