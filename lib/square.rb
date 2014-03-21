class Square

attr_reader :x, :y

	def initialize(x,y)
		@x = x
		@y = y
	end

	def self.create(x,y)
		new_square = Square.new(x,y)
	end
end