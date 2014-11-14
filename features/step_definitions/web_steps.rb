Given(/^I am on the homepage$/) do
 visit("/")
end

Given(/^I see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I enter a name$/) do
  fill_in 'name', :with=> "Mishal"
end

When(/^I choose to play against the "(.*?)"$/) do |opponent|
  select(opponent, :from=> 'Opponent')
end

Then(/^I follow "(.*?)"$/) do |button|
  click_on(button)
end



# Given(/^I click the "(.*?)" link$/) do |link|
#   click_link(link)
# end

# Then(/^I should see "(.*?)"$/) do |text|
#   expect(page).to have_content text
# end

#ADD LAYOUT file to title name of the game