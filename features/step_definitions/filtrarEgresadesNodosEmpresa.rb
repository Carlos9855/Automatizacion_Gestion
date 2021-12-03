#filter egresades by node Santa Fe 

#Then I should only see egresades belonging to the Santa Fe node
  Then('I should only see egresades belonging to the Santa Fe node') do
    xpath ="/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[5]"
    find(:xpath,  xpath,:text => "Santa Fe")
  end

  