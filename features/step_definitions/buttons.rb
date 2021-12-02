# And I click the Iniciar Sesion button
And('I click the {string} button') do |string|
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
    # elsif string == "Verificar Acceso"
    #     xpath = "/html/body/div[2]/div/table/button/a"
 
    end

    find(:xpath, xpath).click
end
# When I press the {string} button
When('I press the {string} button') do |string|
    if string == "Cerrar Sesión"
        xpath = "/html/body/div/div/div[4]/div[1]/div/div/div/div/div/span"
    end



    find(:xpath, xpath).click
end
# Given I click the {string} button
# Given I tap the "Egresades" button
Given('I tap the {string} button') do |string|
    if string == "Egresades"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[2]/a/p"
    elsif string == "Verificar Acceso"
        xpath = "/html/body/div/div/div[4]/div[2]/div/div[3]/div/div/div[2]/button"
    end


    find(:xpath, xpath).click
end


