When(/^I enter the data for a new course$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Año:"
            fill_in 'ui fluid input', :with => value
        when "Priodo:"
            fill_in 'ui fluid input', :with => value
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