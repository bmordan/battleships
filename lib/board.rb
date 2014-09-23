class Board

	def initialize
		@coordinates = Hash[square_names.flatten.map {|name, square| [name, Square.new]}]
	end

	def shot(coordinate)
		raise 'You already chose that coordinate.' if @coordinates[coordinate].shot?

		if @coordinates[coordinate].occupied?
			ship.delete(coordinate)
			puts "Hit."
			@coordinates[coordinate].shot!
		else
			puts "Miss."
			@coordinates[coordinate].shot!
		end
	end

	def square_names
		letters = ("A".."J").to_a
		numbers = (1..10).to_a
		@square_names = letters.map {|letter| numbers.map {|number| "#{letter}#{number}"}}
	end

	def coordinates
		@coordinates
	end
end

