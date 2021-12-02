When('I enter {string} in the Topico field') do |string|
    fill_in 'Topico', :with => string
end

Then('I see {string} in the Topicos list') do |string|
    page.has_content?(string)
  end
