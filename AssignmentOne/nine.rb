#Part 9: Currency Conversion

class Numeric
	@@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1}
	def method_missing(method_id)
		singular_currency = method_id.to_s.gsub( /s$/, '') #gets rid of 's' on end of currency and converts symbol to string
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		else
			super
		end
	end

	def in(currency) #method takes in currency
		singular_currency = currency.to_s.gsub( /s$/, '')	#gets rid of 's' and converts it to string
		self / @@currencies[singular_currency]	#goes into class variable, finds value from has_key
	end
end

print 5.dollars.in(:yen)