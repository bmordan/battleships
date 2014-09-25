class Square

attr_accessor :occupied, :shot

	def initialize
		@occupied = false
		@shot = false
	end

	def occupied?
		@occupied == true
	end

	def occupy
		@occupied = true
	end

	def shot?
		@shot == true
	end

	def shot!
		@shot = true
	end

end