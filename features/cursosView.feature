Feature: As a Nahual volunteer
         I want to see the Cursos information
         So I can know which Cursos are on the Nhahual platform

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I click the "Iniciar con Google" button 
  And I enter my email 
  And I click the "Siguiente" button   
  And I enter my password
  And I click the "Siguiente" button 
  

  And I click the "Verificar Acceso" button 
  And I see the message "Bienvenide"

Scenario: Visualize Cursos          
  Given I click the "Cursos" button
  Then I see the "Cursos" list

Scenario: Created new Curso
  Given I click the "Cursos" button
  And I press the "Nuevo Curso" button
  #When I enter the data for a new course
  #|Año:          |2022                    |
  #|Periodo:      |1                       |
  #|Estado:       |Activo                  |
  #|Curso Para:   |Egresades               |
  #|Topico:       |Alfabetizacion Digital  |
  #|Sede-Nodo:    |Technisys - CABA        |
  #|Horario:      |Tarde(14-16)            |
  #|Profesor:     |Martin                  |
  #|Notas:        |No Covid                |
  Then I see the "Nuevo Curso" list
  