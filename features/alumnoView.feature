Feature: As a Nahual volunteer
         I want to see the information from a specific Alumno
         So I can know more about him/her

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


Scenario: Visualize Alumno          

  Given I click the eye button of the Alumno named "Grupo Cinco"
  Then I see the information of the Alumno named "Grupo Cinco"

