#Scenario: See the modules of a egresades from egresades table companies

Given('I hit the empresas button on left menu of the main page') do
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]/a"
    find(:xpath, xpath).click
  end
  
  When('I can see the egresades table on companies') do
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table')
  end
  
  And('I click the green button called Ver Modulos in the first egresade') do
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[6]/button"
    find(:xpath, xpath).click
  end
  
  Then('I can see the modal titled {string} with information about the modules taken by the graduate') do | string |
    expect(page).to have_content(string)
  end