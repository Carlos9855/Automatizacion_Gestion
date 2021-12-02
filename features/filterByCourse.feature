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

  

Scenario Outline: Filter by course

  Given I click the course name
  When I click the "<curso>" option
  Then I see the "<curso>" list


  Examples:
        | curso                                                            |
        |   Alfabetización Digital / CABA - Paternal / Martin / Tarde      |
        |   Prueba / CABA - Intive / Juan / loquesea                       |
        |   Prueba / CABA - Intive / Juan / Tarde(14-16)                   |
        |   Tópico editado / CABA - Intive / Mario Bross / 10:30- 12:00    |
    
      