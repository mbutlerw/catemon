class Game
	attr_reader :current_turn

	def initialize(player_1, player_2)
		@players = [player_1, player_2]
		@current_turn = player_1
	end

	def self.create(player_1,player_2)
		@game = Game.new(player_1, player_2)
	end

	def self.instance
		@game
	end

	def player_1
		players.first
	end

	def player_2
		players.last
	end

	def switch_turn
		@current_turn = opponent_of(current_turn)
	end

	def game_over?
		losing_players.any?
	end

	def opponent_of(player)
		not_passed_player(player).first
	end


	def loser
		losing_players.first
	end

	private

	attr_reader :players

	def losing_players
		players.select { |p| p.hit_points <= 0}
	end

	def not_passed_player(the_player)
		players.select { |p| p != the_player}
	end
end
