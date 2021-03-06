Given (/^my account has been credited with (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
	my_account.credit(amount)
end

Then (/^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do | amount |
	my_account.should eq(amount),
	"Expected the balance to be #{amount} but it was #{my_account.balance}"
end