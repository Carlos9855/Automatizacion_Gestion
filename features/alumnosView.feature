Feature: As a Nahual volunteer
         I want to see the Alumnos information
         So I can know which Alumos are on the Nhahual platform

Background:
  Given I am on the Nahual homepage
  And I click the "Iniciar Sesion" button    
  And I press the "Iniciar con Google" button 
  And I enter my email
  And I hit the "Siguiente" button   
  And I enter my password
  And I hit the "Siguiente" button 
  

  And I push the "Verificar Acceso" button 
  And I see the message "Bienvenide"

Scenario: Visualize Alumnos          
  Given I press the "Cursos" button on the left sidebar
  When I click the "Alumnes" tab
  Then I see the "Alumnes" list

  