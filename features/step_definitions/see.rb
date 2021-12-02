Then('I see the {string} list') do |string|
    if string == "Alumnes"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/h2/div').text.should == "Lista Alumnes"
    elsif string == "Cursos"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/h2/div').text.should == "Cursos" 
    elsif string == "Nodos Sedes"
        find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/div/div/div[1]/h2/div').text.should == "Nodos & Sedes" 
    elsif string == "Nuevo Curso"
        find(:xpath, '/html/body/div[2]/div/div[1]/div/div[2]/div/div').text.should == "Nuevo Curso"
    end                 
end


