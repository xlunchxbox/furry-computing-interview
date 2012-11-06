Given /^I have (\d+) trades?$/ do |amt|
  amt.to_i.times { FactoryGirl.create(:trade) }
end

When /^I visit the trade listing page$/ do
	visit '/trades'
end

Then /^I should see (\d+) trades?$/ do |amt|
  page.all('.trade').count.should eql amt.to_i
end

Given /^I have a trade like:$/ do |table|
  attr_hashes = table.hashes.map do |hash|
  	attribute = hash["Attribute"].downcase.underscore.to_sym
  	{ attribute => hash["Value"] }
  end
  attributes = attr_hashes.inject({}, &:merge)
  FactoryGirl.create(:trade, attributes)
end

Then /^I should see "(.*?)"$/ do |text|
	page.should have_content text
end

Given /^I have a trade$/ do
  step %{I have 1 trade}
end

Given /^I have some trades$/ do
  step %{I have #{rand(1..25)} trades}
end