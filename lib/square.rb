class Square

attr_accessor :occupied

	def initialize
		@occupied = false
	end

	def occupied?
		@occupied == true
	end

	def occupy
		@occupied = true
	end

end