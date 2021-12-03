Feature: As a Nahual volunteer
         I want to close the Topico form 
         So I can go back without creating a new Topico

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


Scenario: Cancel Topico creation          
  Given I click the "Cursos" button
  When I click the "Topicos" tab
  And I see the "Topicos" list
  And I click the "Topico" button
  And I click the "Cancelar" button
  Then I see the "Topicos" list