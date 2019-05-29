Given(/^I am on a page with some hidden result elements$/) do
  visit 'http://localhost/html/chapter2/hidden.html'
end

When(/^I search for visible results$/) do
  @results = []
  all('.result', :visible => true).each { |elem| @results.push elem.text }
end

Then(/^the correct number of matches is found$/) do
  @results.length.should == 4
end
