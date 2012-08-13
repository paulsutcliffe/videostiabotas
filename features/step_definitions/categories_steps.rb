Given /^I am a new authenticated user$/ do
   email = 'iam@milesdavis.com'
   password = 'donalee'
   User.new(:email => email, :password => password, :password_confirmation => password).save!

   visit '/'
   fill_in "E-mail", :with => email
   fill_in "Contraseña", :with => password
   click_button "Ingresar"
end

When /^I visit the "(.*?)" page$/ do |page|
  visit(page)
end

When /^I follow "(.*?)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "(.*?)"$/ do |button|
  click_button(button)
end

Then /^I should see "(.*?)"$/ do |result|
  page.should have_content(result)
end

Given /^a "(.*?)" category exists$/ do |category|
  Category.new(:name => category).save!
end

Then /^I should not see "(.*?)"$/ do |result|
  page.should have_no_content(result)
end
