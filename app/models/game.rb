class Game < ApplicationRecord
  #validates :title,:start_date,:end_date, presence: true
  has_many :game_players, dependent: :destroy
  has_many :winner_boards, dependent: :destroy
  accepts_nested_attributes_for :game_players, reject_if: :all_blank, allow_destroy: true
end
