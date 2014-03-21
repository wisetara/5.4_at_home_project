require 'rspec'
require './lib/game'

describe 'Game' do
	describe 'initialize' do
		it 'initializes an instance of the Game class' do
		test_game = Game.new(3,3)
		test_game.should be_an_instance_of Game
		end
	end
end