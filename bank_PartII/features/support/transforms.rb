#encoding utf-8"
CAPTURE_CASH_AMOUNT = Transform (/^(£|\$|€)(\d+)$/) do | currency_symbol, digits |
	#obviously we have to create a Currency::Money class to make this work
	Currency::Money.new(digits, currency_symbol)
	digits.to_i
end