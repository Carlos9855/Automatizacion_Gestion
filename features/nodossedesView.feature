Feature: As a Nahual volunteer
         I want to see the Nodoes Sedes information
         So I can know which Nodoes Sedes are on the Nhahual platform

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

Scenario: Visualize Nodos Sedes         
  Given I click the "Cursos" button
  When I click the "Nodos Sedes" tab
  Then I see the "Nodos Sedes" list


#Scenario: Created new Nodo
#  Given I click the "Cursos" button
#  And I click the "Nodos Sedes" tab
#  And I press the "Nodo" button
#  And I see the "Crear Nodo" list
#  When I enter the data for a new course
#  |Nodo:          |Cochabamba-Bolivia      |
#  And I press the "Crear" button
#  Then I see the "Nodos Sedes" list
