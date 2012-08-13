Given /^a "(.*?)" character exists$/ do |character|
  Character.new(:name => character).save!
end
