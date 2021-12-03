When(/^I enter the data for a new course$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Año:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[1]/div/input', :with => value
        when "Periodo:"
            fill_in '/html/body/div[2]/div/div[2]/form/div[2]/div/input', :with => value
        end
    end
end

#|Año:          |2021                    |
#|Periodo:      |1                       |
#|Estado:       |Activo                  |
#|Curso Para:   |Egresades               |
#|Topico:       |Alfabetizacion Digital  |
#|Sede-Nodo:    |Technisys - CABA        |
#|Horario:      |Tarde(14-16)            |
#|Profesor:     |Martin                  |
#|Notas:        |No Covid                |