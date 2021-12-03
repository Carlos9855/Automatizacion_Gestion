Then('I see the {string} list') do |string|
    if string == "Alumnes"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/h2/div').text.should == "Lista Alumnes"
    elsif string == "Cursos"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/h2/div').text.should == "Cursos" 
    elsif string == "Nodos Sedes"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/div/div/div[1]/h2/div').text.should == "Nodos & Sedes" 
    elsif string == "Nuevo Curso"
        find(:xpath, '/html/body/div[2]/div/div[1]/div/div[2]/div/div').text.should == "Nuevo Curso"
    elsif string.include? "/" and string.include? "-"
        xpath = '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[4]/span/div/div[1]'
        expect(find(:xpath, xpath)).to have_content(string)
    elsif string == "Topicos"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/a[4]').text.should == "Topicos"
    elsif string == "Crear Nodo"
        find(:xpath, '/html/body/div[2]/div/div[1]/div/div').text.should == "Crear Nodo"
    elsif string == "Lista Egresades"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/div[1]/h2/div').text.should == "Lista Egresades"
    end                 
end


