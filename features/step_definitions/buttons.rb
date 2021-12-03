# Given I click the {string} button 
# And I click the {string} button                 
Given('I click the {string} button') do |string|
    if string == "Iniciar Sesion"
        xpath = "/html/body/div/div/div[4]/div[2]/div/button"
    elsif string == "Iniciar con Google"
        xpath = "/html/body/div/div/div[2]/form/div/div/div/div/div[2]/div[2]/span/div/div/div/div/div/div/div/div/div/div/div[1]/a/div[2]"
    elsif string == "Siguiente"
        xpath = "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"
    elsif string == "Importar"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[2]/div[4]/div[2]/div/button"
    elsif string == "Descargar Ejemplo"
        xpath = "/html/body/div[2]/div/table/button/a"
    elsif string == "Egresades"
            xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[2]/a/p"
    elsif string == "Verificar Acceso"
            xpath = "/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button"
    elsif string == "Cursos"
            xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[3]/a"
    elsif string == "Topico"
            xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/div[3]/button"
    elsif string == "Crear"
            xpath = "/html/body/div[2]/div/div[2]/form/button[2]"
    elsif string == "Cancelar"
            xpath = "/html/body/div[2]/div/div[2]/form/button[1]"
    elsif string == "Empresas"
            xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]/a"
    elsif string == "Filtrar"
            xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]"  
    elsif string == "Empresas"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]/a"
    elsif string == "Filtrar"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]"
    elsif string == "Nivel de Ingles"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]/div[2]/div[3]/div[1]"
    elsif string == "Ver Modulos"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[6]/button"
    elsif string == "Nodos"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[1]"
    end

    find(:xpath, xpath).click
end


# When I press the {string} button
When('I press {string} button') do |string|
    if string == "Cerrar Sesión"
        xpath = "/html/body/div/div/div[4]/div[1]/div/div/div/div/div/span"
    elsif string == "Santa Fe"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/span"
    end

    find(:xpath, xpath).click
end


# And-When I press the buton x to close the filter called "Quitar Todos"
When('I press the buton x to close the filter called {string}') do |string|
    if string == "Quitar Todos"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/a"
    elsif string == "Nuevo Curso"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[4]/button"
    elsif string == "Nodo"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/div/div/div[3]/button"
    elsif string == "Crear"
        xpath = "/html/body/div[2]/div/div[3]/button[2]"
    end

    find(:xpath, xpath).click
end

#Filtros Scenario Outline 
When('I click the {string} option') do |string|
    counter = 1

    xpath_base_name = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]' 

    xpath_base_name1 = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]'      
    xpath_base_name2 = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]'      
    xpath_base_name3 = '/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[3]/div[2]/div[%i]'      

    find(:xpath, xpath_base_name % [counter]).click
    counter += 1 
end








