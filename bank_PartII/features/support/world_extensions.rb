module KnowsTheInterface
	class UserInterface
		require 'capybara/cucumber'
		
		def withdraw_from(account, amount)
		  visit '/'
		  fill_in 'Amount', :with => amount
		  click_button 'Withdraw'
		end
	end
	def my_account
		@my_account ||= Account.new
	end
	def cash_slot
		#@cash_slot ||= CashSlot.new
		Sinatra::Application.cash_slot
	end
	def teller
		@teller ||= UserInterface.new
	end
end
World(KnowsTheInterface)