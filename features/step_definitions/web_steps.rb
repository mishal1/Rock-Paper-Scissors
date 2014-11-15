
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

When(/^I have set up a game$/) do
	step 'I am on the homepage'
	step 'I enter a name'
	step 'I choose to play against the "Computer"'
	step 'I follow "Play game"'
end

Then(/^I choose the "(.*?)" button$/) do |button|
  click_on(button)
end


#ADD LAYOUT file to title name of the game