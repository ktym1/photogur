class String
	def unique_chars?
		unique_chars = {}
		self.each_char do |char|
			return false if unique_chars[char]
			unique_chars[char] = true
		end
		return true
	end
	
	def unique_chars2?
		unique_chars = []
		self.split('').each_with_index do |char, index|
			index = self.index(char) || index
			return false if unique_chars[index]
			unique_chars[index] = true
		end
		return true
	end

	# assume that string is only 'a' through 'z' (lowercase)
	def unique_chars3?
		checker = 0
		(0...self.length).each do |index|
			value = self[index].ord - "a".ord
			return false if ((checker & (1 << value)) > 0)
			checker |= (1 << value)
		end
		return true
	end

	def unique_chars4?
		unique_chars = self.split('').uniq
		return unique_chars.length == self.length ? true : false
	end
end

puts "qwertyui".unique_chars?
puts "abcabcabc".unique_chars?
puts "qwertyui".unique_chars2?
puts "abcabcabc".unique_chars2?
puts "qwertyui".unique_chars3?
puts "abcabcabc".unique_chars3?
puts "qwertyui".unique_chars4?
puts "abcabcabc".unique_chars4?