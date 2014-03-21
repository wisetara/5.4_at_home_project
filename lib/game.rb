class Game
	
	attr_reader :row, :column

	@@winners = [[1,4,7], [2,5,8], [3,6,9], [1,2,3], [4,5,6], [7,8,9], [1,5,9], [3,5,7]]

	def initialize(row,column)
		new_board = Board.create(row,column)
		player1 = Player.create('X')
		player2 = Player.create('O')
	end
end