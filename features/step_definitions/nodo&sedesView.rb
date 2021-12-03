When(/^I enter the data for a new nodo$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Nodo:"
            fill_in '/html/body/div[2]/div/div[2]/form/div/input', :with => value
        end
    end
end