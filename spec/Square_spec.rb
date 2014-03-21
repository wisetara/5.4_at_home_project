require 'rspec'
require './lib/square'

describe 'Square' do 
	describe 'initialize' do
		it 'initializes an instance of the Square class' do
			test_square = Square.new(1,3)
			test_square.should be_an_instance_of Square
		end
	end	
	describe '.create' do
		it 'creates a new square based on a set of coordinates' do
			test_square = Square.new(1,3)
			test_square.x.should eq 1
			test_square.y.should eq 3
		end
	end
end