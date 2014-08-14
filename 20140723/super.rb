
#Flow: Child is instantiated, then super sends message to parent initialize method, 
# which then prints the argument. Only 'arg' is printed because the super only accepted one argument
class Parent

	def initialize(argument_parent)
		puts argument_parent
	end

end

class Child < Parent

	def initialize(argument_child, argument_extra)
		super(argument_child)
	end

end

c = Child.new("arg", "extra")


#Flow: Error - wrong number of arguments because super has 2 arguments, but Parent initialize method has one
class Parent

	def initialize(argument_parent)
		puts argument_parent
	end

end

class Child < Parent

	def initialize(argument_child, argument_extra)
		super(argument_child, argument_extra)
	end

end

c = Child.new("arg", "extra")

# Flow: super with no arguments implicitly takes in 1 argument. 
# Will error if Child object uses super method with >1 argument
class Parent

	def initialize(argument_parent)
		puts argument_parent
	end

end

class Child < Parent

	def initialize(argument_child)
		super
	end

end

c = Child.new("arg")