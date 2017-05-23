require 'capybara/dsl'

Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.google.be'

class WebRobot
	include Capybara::DSL
	
	def go
		visit '/'
		# ... etc
	
		puts ('press any key to finsih')
		gets
	end
end