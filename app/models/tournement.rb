class Tournament < ActiveRecord::Base
    has_many :team_tournements
    has_many :teams, through: :team_tournements
  end