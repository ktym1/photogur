def rotate matrix
	n = matrix.length
	(0...n / 2).each do |layer|
		first = layer
		last = n - 1 - layer
		(first...last).each do |index|
			offset = index - first
			# save top-left
			top = matrix[first][index]
			
			# top-left = bottom-left
			matrix[first][index] = matrix[last - offset][first]
			# bottom-left = bottom-right
			matrix[last - offset][first] = matrix[last][last - offset]
			# bottom-right = top-right
			matrix[last][last - offset] = matrix[index][last]
			# top-right = saved top-left
			matrix[index][last] = top
		end
	end
	return matrix
end

matrix = [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11], [12, 13, 14, 15]]
rotate(matrix)
print matrix
puts