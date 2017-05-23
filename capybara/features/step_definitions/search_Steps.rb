When (/^I searchfor "([^"]*)"$/) do |query|
	visit('/query')
	fill_in('query', :with => query)
end

Then (/^the results should be:$/) do |expected_results|
	#wait until a matching element is found on the page
	find('ol.results li')
	results = [['content']] + page.all('ol.results li').map do |li|
		[li.text]
	end
	
	#puts results.json("\n")
	#pending
	expected_results.diff!(results)
end
