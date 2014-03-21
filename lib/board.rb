class Board

	attr_reader :row, :column, :squares

	@@squares = []

	def initialize(row,column)
		@row = row
		@column = column
		
		(1..row).each do |x|
			(1..column).each do |y|
				@squares << Square.create(x,y)
			end
		end
	end


	def self.create(row,column)
		new_board = Board.new(row,column)
	end
end
