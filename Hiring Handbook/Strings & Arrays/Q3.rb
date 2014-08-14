def replace_spaces str
	return str.gsub(" ", "%20")
end

def replace_spaces2 str
	indexes = []
	(0...str.length).each do |index|
		indexes << index if str[index] == " "
	end
	indexes.reverse_each do |index|
		str.insert(index, "  ")
		str[index] = "%"
		str[index + 1] = "2"
		str[index + 2] = "0"
	end
	return str
end

test = "hot diggity har har who?"
puts replace_spaces(test)
puts replace_spaces2(test)