#Part 2: Palindromes

def palindrome?(string)
	temp_str = string.downcase.gsub(/\W/, "")		#downcase: replaces letters w/ lowercase, gsub: replacement string
	temp_str == temp_str.reverse		
end

puts palindrome?("Madam, I'm Adam")


