Given(/^I am a authenticated user$/) do
  email = "darkdragon236@gmail.com"
  password = "tthanhuetn01"
  @user = User.create!(name:  "Gin",
             email: email,
             password:              password,
             password_confirmation: password)
  
  visit '/login'
  fill_in "session_email", with: email
  fill_in "session_password", with: password
  click_button "Log in"
end

Given(/^the following BMI exist:$/) do |table|
  table.hashes.each do |bmi|
     @user.healths.create! bmi 
  end
end

Given(/^I am not authenticated$/) do
  visit "/"
end

Given(/^I am on log in page$/) do
  visit "/login"
end

Given(/^I am on health page$/) do
  visit user_path @user
end

Given(/^the following users exist:$/) do |table|
  table.hashes.each do |user|
    User.create! user
  end
end

Given(/^I login with email "([^"]*)"$/) do |email|
  visit '/login'
  fill_in "session_email", with: email
  fill_in "session_password", with: "123456"
  click_button "Log in"
end

When(/^I want to edit my account$/) do
  visit edit_user_path @user
end

When(/^I want to calculate BMI$/) do
  visit "/"
end

When(/^I go to register$/) do
  visit "/signup"
end

When(/^I go to all users page$/) do
  visit users_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, with: value)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.has_content? text
end

Then(/^I should see "([^"]*)" \# your work!$/) do |text|
  page.has_content? text
end

Then(/^I should see link "([^"]*)"$/) do |link|
  find_link(link).visible?
end

Then(/^I click link "([^"]*)"$/) do |link|
  click_link link
end
