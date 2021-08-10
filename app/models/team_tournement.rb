class TeamTournement < ActiveRecord::Base
    belongs_to :teams
    belongs_to :tournaments
  end