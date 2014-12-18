class Game

	def initialize
		create_a_board
		create_players
	end

	def create_a_board
		@board = Board.new
	end

	def create_players
		@player1 = Player.new
		@player2 = Player.new
	end

end