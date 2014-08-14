def set_zeros matrix
	height = matrix.length
	width = matrix[0].length
	rows = Array.new(height)
	columns = Array.new(width)
	(0...height).each do |row|
		(0...width).each do |col|
			if matrix[row][col] == 0
				rows[row] = 1
				columns[col] = 1
			end
		end
	end

	(0...height).each do |row|
		(0...width).each do |col|
			matrix[row][col] = 0 if (rows[row] == 1 || columns[col] == 1)
		end
	end
	return matrix
end

def set_zeros2 matrix
	height = matrix.length
	width = matrix[0].length
	zero_row = Array.new(width, 0)
	rows = []
	columns = []
	matrix.each_with_index do |row, r_index|
		if row.include?(0)
			rows << r_index
			row.each_with_index do |col, c_index|
				columns << c_index if col == 0
			end
		end
	end

	rows.each do |r_index|
		matrix[r_index] = zero_row
		# (0...width).each do |col|
		# 	matrix[r_index][col] = 0
		# end
	end
	columns.each do |c_index|
		matrix.each do |row|
			row[c_index] = 0
		end
	end
	return matrix
end

matrix1 = [[4, 9, 8, 5], [8, 2, 4, 0], [7, 2, 3, 1], [6, 0, 8, 9]]
matrix2 = [[4, 9, 8, 5], [8, 2, 4, 0], [7, 2, 3, 1], [6, 0, 8, 9]]
print set_zeros(matrix1)
puts
print set_zeros2(matrix2)
puts