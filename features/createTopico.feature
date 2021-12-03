Feature: As a Nahual volunteer
         I want to see the create a Topico 
         So I can asociate it to a course 

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


Scenario: Create Topico          
  Given I click the "Cursos" button
  When I click the "Topicos" tab
  And I see the "Topicos" list
  And I click the "Topico" button
  And I enter "Prueba automatica" in the Topico field
  And I click the "Crear" button
  Then I see "Prueba automatica" in the Topicos list