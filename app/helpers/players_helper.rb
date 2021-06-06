module PlayersHelper
  # find the no of game win
  def find_no_of_winner(player)
    player.where(is_winner: true).count
  end

  # find the no of game loss
  def find_no_of_loss(player)
    player.where(is_winner: false).count
  end

  # find the average score of all the games
  def find_average_score(player)
    player.average(:score).round(2)
  end

  # find the higest score from all the games
  def find_higest_score(player)
    player.maximum(:score)
  end
end
