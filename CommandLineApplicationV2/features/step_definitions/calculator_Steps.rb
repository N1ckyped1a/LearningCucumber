Given (/^the input "([^"]*)"$/) do |input|
	write_file 'input.text', input
end
When (/^the calculator is run$/) do
	steps %{
		run 'calculator input.txt'
	}
end
#Then (/^the output should be "([^"]*)"$/) do |output|
#	steps %{
#		Then it should pass with:
#		"""
#		#{output}
#		"""
#	}
#end

When (/^the calculator is run with no input$/) do
	run_interactive 'calculator'
end
When (/^I enter the calculation "([^"]*)"$/) do
	type calculation
end
Then (/^the output should be "([^"]*)"$/) do |output|
	assert_passing_with output
end