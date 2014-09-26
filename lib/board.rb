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
		raise 'You already chose that coordinate.' if grid[coordinate].shot?
		grid[coordinate].shoot!
		assess_shot(coordinate)
	end

	def assess_shot(coordinate)
		if grid[coordinate].occupied?
			player.hit(coordinate)
			puts "#{coordinate}: Hit."
		else
			puts "#{coordinate}: Miss."
		end
	end

	def set_ship_coordinate(coordinate)
		raise 'That cell is already occupied.' if grid[coordinate].occupied?		
		grid[coordinate].occupy
	end
end