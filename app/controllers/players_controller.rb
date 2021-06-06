class PlayersController < ApplicationController
  before_action :find_player, only: %i[edit update show destroy]

  # GET /players
  def index
    @players = Player.all
  end

  # GET /players/1
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to players_path
    else
      render :new
    end
  end

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      redirect_to players_path
    else
      render :edit
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
    redirect_to players_url, notice: 'player was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def find_player
    @player = Player.find(params[:id]) rescue current_player
  end

  # Only allow a trusted parameter "white list" through.
  def player_params
    params.require(:player).permit(:first_name, :last_name, :contact_details, :date_of_joining)
  end
end
