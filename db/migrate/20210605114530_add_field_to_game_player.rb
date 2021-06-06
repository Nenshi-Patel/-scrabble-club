class AddFieldToGamePlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :game_players, :is_winner, :boolean, default: true
  end
end
