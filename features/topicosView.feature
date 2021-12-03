Feature: As a Nahual volunteer
         I want to see the Topicos list 
         So I can know what Topicos are available

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


Scenario: View the Topicos list          
  Given I click the "Cursos" button
  When I click the "Topicos" tab
  Then I see the "Topicos" list
 