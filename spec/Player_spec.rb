require 'rspec'
require './lib/player'

describe 'Player' do
	describe 'initialize' do
	it 'initializes an instance of Player' do
		test_player = Player.new('X')
		test_player.should be_an_instance_of Player
		end
	end
	describe '.create' do
		it 'creates a new instance of Player' do
			test_player = Player.create('X')
			test_player.marker.should eq 'X'
		end
	end
end