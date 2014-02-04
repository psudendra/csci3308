#Part 10: Palindromes

class String
	def palindrome?
		temp_str = self.downcase.gsub(/\W/, "")
		temp_str == temp_str.reverse
	end
end

module Enumerable
	def palindome?
		array = [] #make empty array
		self.collect{|num| num} == self.collect{|num|num}.reverse #compare array of numbers to its reversed self
	end
end