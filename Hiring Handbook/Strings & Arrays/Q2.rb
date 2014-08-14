def anagram str1, str2
	return str1.chars.sort(&:casecmp).join == str2.chars.sort(&:casecmp).join
end

def anagram2 str1, str2
	return false unless str1.length == str2.length
	letters = Hash.new(0)
	unique_chars = 0
	letters_in_str2 = str2.length
	str1.each_char do |char|
		unique_chars += 1 unless letters[char] == 0
		letters[char] += 1
	end
	str2.each_char do |char|
		return false if letters[char] == 0
		letters[char] -= 1
		if letters[char] == 0
			letters_in_str2 -= 1
			if (finish = letters_in_str2 == 0)
				return finish ? true : false
			end
		end
	end
end

str1 = "tomcruise"
str2 = "soimcuter"
puts anagram(str1, str2)
puts anagram2(str1, str2)