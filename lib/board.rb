class Board


	def initialize
		@coordinates = Hash[square_names.flatten.map {|name, square| [name, Square.new]}]
	end

	def shot(square)
		square.accept_shot
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

