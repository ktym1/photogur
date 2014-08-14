class Library
	
	def each_on_system(arg)
		(1..arg).each do |i|
			puts i
			yield if i == 3
		end
	end

end

l = Library.new
l.each_on_system(22) { puts "hello" }