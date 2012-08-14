When /^I select "(.*?)" from "(.*?)"$/ do |value, field|
  select(value, :from => field)
end

When /^I attach the file "(.*?)" to "(.*?)"$/ do |file, field|
  path = "features/support/" + file
  attach_file(field, File.expand_path(path))
end

Given /^already exists a few categories and characters$/ do
  Category.create([{ :name => 'Cuento' }, { :name => 'Canción' }, { :name => 'Karaoke' }])
  Character.create([{ :name => 'Orlando' }, { :name => 'Omar' }, { :name => 'Pomodoro' }])
end

Given /^a "(.*?)" video exists$/ do |title|
  Video.new(:title => title, :character_id => 1, :category_id => 1).save!
end
