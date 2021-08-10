class Team < ActiveRecord::Base
    has_many :players
    has_many :team_tournements
    has_many :tournaments, through: :team_tournements
  end