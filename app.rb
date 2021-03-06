require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/attack'

class Battle < Sinatra::Base
  #
  # enable :sessions
  # set :session_secret, 'Secret Session'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get "/play" do
    erb :play
  end

  post '/attack' do
    Attack.run(@game.current_turn) if @game.player_2.name == "Computer"
    Attack.run(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/game_over' do
    erb :game_over
  end

  get "/attack" do
    erb :attack
  end

  post "/switch_turns" do
    @game.switch_turn
    redirect('/play')
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
