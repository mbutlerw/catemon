require_relative 'player'

class Game

  attr_reader :current_player, :opponent, :turn

  def self.create(player1,player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def initialize(player1=Player.new,player2=Player.new)
    @turn = 0
    @players = [player1, player2]
    @current_player = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_attack
    @turn += 1
  end

  def player1
  	@players[0]
  end

  def player2
  	@players[1]
  end

  def switch_player
  	@opponent = @current_player
    if @current_player == @players.last
      @current_player = @players[0]
    else
      index = @players.index(@current_player)
      @current_player = @players[index+1]
    end
  end

  def winner
    @players.select{|player| player.hit_points <= 0}
  end

  def game_over?
    @players.any?{|player| player.hit_points <= 0}
  end
  private


end
