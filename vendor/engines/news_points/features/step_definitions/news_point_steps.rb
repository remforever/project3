Given /^I have no news_points$/ do
  NewsPoint.delete_all
end

Given /^I (only )?have news_points titled "?([^\"]*)"?$/ do |only, titles|
  NewsPoint.delete_all if only
  titles.split(', ').each do |title|
    NewsPoint.create(:title => title)
  end
end

Then /^I should have ([0-9]+) news_points?$/ do |count|
  NewsPoint.count.should == count.to_i
end
