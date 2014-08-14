def rotation? str1, str2
	len = str1.length
	if (len == str2.length && len > 0)
		str1_str1 = str1 + str1
		return is_substring(str1_str1, str2)
	end
	return false
end

def is_substring str1, str2
	return str1.index(str2) ? true : false
end

str1 = "apple"
str2 = "pleap"
puts rotation?(str1, str2)