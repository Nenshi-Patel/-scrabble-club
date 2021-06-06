class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :game_players, dependent: :destroy
	has_many :winner_boards, dependent: :destroy
  validates :first_name,:date_of_joining,:contact_details, presence: true
  # return user's full name
  def full_name
    (self.first_name.present? && self.last_name.present?) ? self.first_name + " " + self.last_name : " "
  end
end
