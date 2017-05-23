require 'childprocess'
require 'timeout'
require 'httparty'

#process = ChildProcess.build("C:/Ruby23-x64/bin/cucumber.bat")
#process.start
server = ChildProcess.build("rackup", "--port", "9999")
server.start

#ChildProcess.posix_spawn = true

Timeout.timeout(3) do
	loop do
		begin
			HTTParty.get('http://localhost:9999')
			break
		rescue Errno::ECONNREFUSED => try_again
			sleep 0.1
		end
	end
end

at_exit do
#	process.stop
	server.stop
end