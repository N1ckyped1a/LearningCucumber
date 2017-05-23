Before do 
	puts "Go!!!"
end

Before do |scenario|
	puts "Starting scenario '#{scenario.name}'"
end

Around ('@run_with_and_without_javascript') do |scenario, block|
	Capybara.current_driver = Capybara.javascript_driver
	puts "About to run '#{scenario.name}'"
	block.call
	puts "Finished running '#{scenario.name}'"
	Capybara.use_default_driver
	block.call
end

After do |scenario|
	puts "Oh Dear" if scenario.failed?
end

After do
	puts "Stop!!!"
end

