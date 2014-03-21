class Player

attr_reader :marker 
	
	def initialize(marker)
		@marker = marker
	end

	def self.create(marker)
		new_player = Player.new(marker)
	end
end