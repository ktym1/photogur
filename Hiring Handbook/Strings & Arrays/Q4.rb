def remove_duplicates str
	return str if str.nil? || (len = str.length) < 2
	hit = {}
	(len - 1).downto(0).each do |index|
		if hit[str[index]]
			str[index] = ""
		else
			hit[str[index]] = 1
		end
	end
	return str
end

def remove_duplicates2 str
	return if str.nil? || (len = str.length) < 2
	letters_examined = 1
	position = 1
	start = str[0]
	while letters_examined <= len
		if start == str[position]
			str[position] = ""
		else
			start = str[position]
			position += 1
		end
		letters_examined += 1
	end
	return str
end

str = "aabbbaaacccbbcccdefgdefg"
puts remove_duplicates(str)
puts remove_duplicates2(str)