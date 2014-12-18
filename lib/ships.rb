class Ships

	def initialize(size = nil)
		@afloat
		@size = size
		@count = size
	end

	def afloat?
		sunk ? @afloat = false : @afloat = true
	end

	def length
		size 
	end

	def size
		@size
	end

	def hit!
		@count -= 1
	end

	def hit_count
		@count
	end

	def sunk
		@count == 0
	end

end

class AircraftCarrier < Ships

	def initialize
		super(5)
	end

end

class Battleship < Ships

	def initialize
		super(4)
	end

end

class Submarine < Ships

	def initialize
		super(3)
	end

end

class Destroyer < Ships

	def initialize
		super(3)
	end

end

class PatrolBoat < Ships

	def initialize
		super(2)
	end

end

