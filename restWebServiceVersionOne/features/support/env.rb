require File.join(File.dirname(__FILE__), '..', '..', 'fruit_App')
require 'rack/test'

module AppHelper
	def app
		FruitApp
	end
end

World(Rack::Test::Methods, AppHelper)