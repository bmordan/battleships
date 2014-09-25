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

	def shot(coordinate)
	raise 'You already chose that coordinate.' if self.grid[coordinate].shot?

		if self.grid[coordinate].occupied?
			player.delete(coordinate)
			puts "Hit."
			self.grid[coordinate].shot!
		else
			puts "Miss."
			self.grid[coordinate].shot!
		end
	end

end