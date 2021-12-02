#Scenario: See the modules of a egresades from egresades table companies

#Then I can see the modal titled "Cursos Realizados" with information about the modules taken by the graduate
  Then('I can see the modal titled {string} with information about the modules taken by the graduate') do | string |
    expect(page).to have_content(string)
  end