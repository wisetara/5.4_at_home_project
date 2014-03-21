require './lib/board'
require './lib/game'
require './lib/square'
require './lib/player'

@moves = 1
@x_moves = []
@o_moves = []
@winner = false

def main_menu
	puts "Would you like to play a game?"
	user_input = gets.chomp.downcase
	if user_input == yes
		game_menu
	else
		puts "Why the hell are you here, then?\n\n 
		Type 'yes' to play a game, or piss off."
	end
end


def opening
	new_board = Board.create(3,3)
	game_menu
end

def game_menu
	
	system('clear')
	Board.squares.each_with_index do |square,index|
		print "#{player.marker}"
		if (index + 1) % 3 == 0
			"\n"
		end
	end

	if @counter % 2 == 1
		x
	else
		o
	end
end

def x
	puts "Player X, please enter the number of a square to mark it."
	number = gets.chomp.to_i
	Board.squares[number-1].set_value('X')
	@x_moves << number
	@counter += 1
	winner_check
	game_menu
end

def o
	puts "Player O, please enter the number of a square to mark it."
	number = gets.chomp.to_i
	Board.squares[number-1].set_value('O')
	@o_moves << number
	@counter += 1
	winner_check
	game_menu
end

def winner_check
	




main_menu