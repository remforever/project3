Given /^I have no bets$/ do
  Bet.delete_all
end

Given /^I (only )?have bets titled "?([^\"]*)"?$/ do |only, titles|
  Bet.delete_all if only
  titles.split(', ').each do |title|
    Bet.create(:result => title)
  end
end

Then /^I should have ([0-9]+) bets?$/ do |count|
  Bet.count.should == count.to_i
end
