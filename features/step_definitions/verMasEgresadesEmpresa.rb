#Scenario: See the SeeMore option of a egresades from egresades table companies  

#And I click on the button with the shape of an eye located on the right side of the row of the first egresade
And('I click on the button with the shape of an eye located on the right side of the row of the first egresade') do
    xpath = "/html/body/div/div/div[4]/div[2]/div/div[2]/div[2]/table/tbody/tr[1]/td[8]/button"
    find(:xpath, xpath).click

end

#Then I can see the modal with all the complete information of the selected egresade
Then('I can see the modal with all the complete information of the selected egresade') do
    xpath = "/html/body/div[2]"
    result = find(:xpath, xpath).visible?.should
    expect(result).to eq(true)
end
