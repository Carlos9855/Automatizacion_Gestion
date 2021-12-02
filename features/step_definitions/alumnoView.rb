And('I click the eye button of the Alumno named {string}') do |string|

  xpath = '/html/body/div/div/div[4]/div[2]/div/div[2]/div/div[5]/table/tbody/tr/td[4]/div/button'
  find(:xpath, xpath).click
end

Then('I see the information of the Alumno named {string}') do |string|
    modal_path = '/html/body/div[2]/div'
    expect(find(:xpath, modal_path)).to have_content(string)
end


