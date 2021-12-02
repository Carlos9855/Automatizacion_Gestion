Feature: As a Nahual volunteer
         I want to filter the Alumnos list by course
         So I can see sprecific Alumnos from a course

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
  
  And I click the "Cursos" button
  And I click the "Alumnes" tab
  And I see the "Alumnes" list

  

Scenario: Filter by course

  Given I click the arrow button next to the course name 
  When I click the "Alfabetización Digital / CABA - Paternal / Martin / Tarde" option
  Then I see the "Alfabetización Digital / CABA - Paternal / Martin / Tarde"  Alumnos list

