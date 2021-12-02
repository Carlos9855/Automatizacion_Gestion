Given('I hit the empresas button on the left part of the main page') do
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[1]/a[4]/a"
    find(:xpath, xpath).click
  end
  
  When('I see the egresades table on the modules companies page') do
    find(:xpath, '/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table')
  end
  
  And('I hit on the filter button with the text {string}') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div"
    find(:xpath, xpath).click
  end
  
  And('I press the node button called {string} on the new options view') do |string|
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div/div[2]/div[1]"             
    find(:xpath, xpath).click
  end
  
  When('I click on the new nodes options button {string}') do |string|
    sleep 2
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[1]/div[1]/div[2]/div[1]/div[2]/div[3]/span"        
    find(:xpath, xpath).click
    # 
    # find("span", :text => string).click
  end
  
  Then('I should only see egresades belonging to the Santa Fe node') do
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[5]"
    find(:xpath,  xpath,:text => "Santa Fe")
  end

  