Given /^a "(.*?)" character exists$/ do |character|
  Character.new(:name => character).save!
end

Then /^I should see the image "(.*?)"$/ do |picture|
  page.should have_xpath("//img[contains(@src, \"#{picture}\")]")
end
