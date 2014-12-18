require './lib/board'
require './lib/cell'
require './lib/ships'
require './lib/player'
require './lib/game'

describe Game do 

	let(:game) {Game.new}
	let(:board) {Board.new}
	let(:cell) {Cell.new}
	let(:player) {Player.new}
	let(:aircraft_carrier){AircraftCarrier.new}
	let(:battleship){Battleship.new}
	let(:submarine){Submarine.new}
	let(:destroyer){Destroyer.new}
	let(:patrol_boat){PatrolBoat.new}

	context 'Start' do

		# it 'can create a board' do
		# 	expect(game).to eq true
		# end

	end 

	
end