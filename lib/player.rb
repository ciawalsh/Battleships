class Player

	def initialize
		@starting_ships = []
	end

	def starting_ships
		battleship = Battleship.new
		aircraftcarrier = AircraftCarrier.new
		submarine = Submarine.new
		patrolboat = PatrolBoat.new
		destroyer = Destroyer.new
		fleet = [battleship, aircraftcarrier, submarine, patrolboat, destroyer]
		@starting_ships.concat(fleet)
	end

	def place_ship_horizontal(coord, board, ship)
		board.place_ship_horizontally(coord, ship)
	end


	def place_ship_vertical(coord, board, ship)
		board.place_ship_vertically(coord, ship)
	end

	def shoot(coord, board)
		board.shoot(coord)
	end

end

