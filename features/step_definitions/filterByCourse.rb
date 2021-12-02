Given('I click the arrow button next to the course name') do
    xpath = '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[4]/span/div/i'
    find(:xpath, xpath).click
  end

  Then('I see the {string}  Alumnos list') do |string|
    xpath = '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[4]/span/div/div[1]'
    expect(find(:xpath, xpath)).to have_content(string)
  end