When('I click the {string} tab') do |string|
    if string == "Alumnes"
        if expect(page).to have_link('Alumnes', href: "/cursos/alumnes")
            click_link('Alumnes')
        end
    elsif string == "Nodos Sedes"  
        if expect(page).to have_link('Nodos Sedes', href: "/cursos/nodos")
            click_link('Nodos Sedes')
        end
    end 
end