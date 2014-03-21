require 'rspec'
require './lib/board'

describe 'Board' do
	describe 'initialize' do
	it 'initializes an instance of Board' do
		test_board = Board.new(3,3)
		test_board.should be_an_instance_of Board
		end
	end

	describe '.create' do
		it 'creates a new instance of Board' do
			test_board = Board.create(3,3)
			test_board.squares.length.should eq 9
			test_board.squares[0].x.should eq 1
			test_board.squares[0].y.should eq 1 
		end
	end
end