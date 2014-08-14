class FooBar

	def foo
		puts self
	end

	def self.bar
		puts self
	end

end

# This is creating an instace of FooBar, and then sending the message for method foo to the instance
f = FooBar.new
f.foo

# This is sending a message to the class, and the class method
FooBar.bar

