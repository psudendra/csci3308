def combine_anagrams(words)

	print words.group_by{ |word| word.each_char.sort}.values	#=>make a hash with each word as a key and an array of words related to each key as the values

end

puts combine_anagrams(['cars', 'for', 'creams', 'fuck', 'racs', 'four', 'scar', 'potatoes','uckf', 'scream'])