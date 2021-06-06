class LeaderBoardsController < ApplicationController

  # GET /leader boards
  def index
    @players = []
    all_players = Player.all
    all_players.each do |player|
      if player.game_players.count >= 10
        @players << player
      end
    end
    @players
  end
end
