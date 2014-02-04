#Part 11: Blocks

class CartesianProduct
	include Enumerable

		def initialize(sequence1, sequence2)
			@sequence1 = sequence1
			@sequence2 = sequence2
		end

		def each
			unless @sequence1.empty? && @sequence2.empty? #don't execture if the sequences are empty
			combination_sequence = []
			@sequence1.each do |s1|
				combination_sequence << @sequence2.each {|s2| yield [s1] << s2}	#iterate through the first sequence while putting both the first and second sequences into combo array
			end
		end
	end
end


c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect}