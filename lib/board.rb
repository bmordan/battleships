class Board


	def initialize
		@squares = []
	end

	def shot(square)
		square.accept_shot
	end

	def squares
		@squares
	end


end