#Part 1: Hello World

class HelloWorldClass		#class created
		def initialize(name)		#initialize class constuctor, parameter name
			@name = name.capitalize		
		end
		def sayHi
			puts "Hello #{@name}!"
		end
end

hello = HelloWorldClass.new("{Priya}")
hello.sayHi