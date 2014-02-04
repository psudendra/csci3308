#Part 3: Word Count

def count_words(string)
	temp_str = string.downcase		#remove non-words
	wordarray = temp_str.scan(/\w+/)		#words from string is put into array
	myhash = Hash.new(0)		#creates new hash
	wordarray.each {|word| myhash[word] += 1}		#puts elements of array into hash as keys and tracks # of times word appears
	return myhash
end


