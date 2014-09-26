class Board

	def initialize
		@grid = Hash[square_names.flatten.map {|name, square| [name, Square.new]}]
	end

	def square_names
		letters = ("A".."J").to_a
		numbers = (1..10).to_a
		@square_names = letters.map  {|letter| numbers.map {|number| "#{letter}#{number}"}}
	end

	def grid
		@grid
	end

	def shoot(coordinate)
		raise 'You already chose that coordinate.' if self.grid[coordinate].shot?
		grid[coordinate].shoot!
		assess_shot(coordinate)
	end

	def assess_shot(coordinate)
		if grid[coordinate].occupied?
			player.delete(coordinate)
			puts "Hit."
		else
			puts "Miss."
		end
	end

	def set_ship_coordinate(coordinate)
		raise 'That cell is already occupied.' if self.grid[coordinate].occupied?		
		grid[coordinate].occupy
	end
end

board = Board.new
board.square_names
board.grid