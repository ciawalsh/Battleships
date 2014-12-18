require './lib/board'
require './lib/cell'
require './lib/ships'

describe Board do

	let(:board) {Board.new}
	let(:cell) {Cell.new}
	let(:ship) {double :ship, size: 1}
	let(:battleship) {Battleship.new}
	let(:submarine) {Submarine.new}

	it 'should initialise with 100 cells' do
		expect(board.hash_length).to eq 100
	end

	it 'should be able to find the state of any cell' do
		expect(board.check_if_occupied("A1")).to eq false
		expect(board.find("A1")).to_not be_shot_at
	end

	it 'should be able to place a one celled ship on any cell' do
		board.place_ship_horizontally("A3", ship)
		expect(board.check_if_occupied("A3")).to eq true
	end

	it 'should know when a cell is occupied' do
		board.place_ship_horizontally("A1", ship)
		expect(board.check_if_occupied("A1")).to eq true
	end

	it 'should be able to place a mutliple celled ship on multiple cells horizontally' do
		board.place_ship_horizontally("A1", battleship)
		expect(board.check_if_occupied("A1")).to eq true
		expect(board.check_if_occupied("A4")).to eq true
	end

	it 'should be able to place a multiple celled ship on multiple cells vertically' do
		board.place_ship_vertically("A1", battleship)
		expect(board.check_if_occupied("A1")).to eq true
		expect(board.check_if_occupied("D1")).to eq true
	end

	it 'should not allow me to place a ship, if another ship is in its path of placement' do
		board.place_ship_vertically("A1", battleship)
		expect(board.place_ship_horizontally("A1", submarine)).to eq ("One of the cells has already been used, please choose another area.")
	end

	it 'can shoot at a cell' do
		expect(board.shoot("A1")).to eq("Miss")
	end

	it 'can not shoot a cell that has already been shot at' do
		board.shoot("A1")
		expect{board.shoot("A1")}.to raise_error(RuntimeError, "A1 has already been shot at, please choose another Co-ordinate!")
	end

	it 'can shoot at a cell with a ship and register a hit on the ship' do
		board.place_ship_horizontally("A1", battleship)
		expect(board.shoot("A1")).to eq("Hit")
	end

end

