class GamesController < ApplicationController
  before_action :find_game, only: %i[edit update show destroy]

  # GET /games
  def index
    @games = Game.all
  end

  # GET /games/1
  def show
    @game = Game.find(params[:id])
    @game.delete
    redirect_to games_url, notice: 'game was successfully destroyed.'
  end

  # GET /games/new
  def new
    @game = Game.new
    2.times do
      @game.game_players.build
    end
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  def create
    @game = Game.new(game_params)
    if @game.save
      game_player = find_winner(@game.game_players)
      game_player.update(is_winner: true)
      redirect_to games_path
    else
      render :new
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      redirect_to games_path
    else
      render :edit
    end
  end

  # DELETE /games/1
  def destroy
    @game = Game.find(params[:id])
    @game.delete
    redirect_to games_url, notice: 'game was successfully destroyed.'
  end

  def find_winner(players)
    max_score = players.maximum(:score)
    players.where(score: max_score)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def find_game
    @game = Game.find(params[:id]) rescue current_game
  end

  # Only allow a trusted parameter "white list" through.
  def game_params
    params.require(:game).permit(:title, :start_date, :end_date, game_players_attributes:[:id, :player_id, :game_id, :score])
  end
end
