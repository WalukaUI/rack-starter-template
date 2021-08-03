class Player < ActiveRecord::Base
    belongs_to :teams
    has_many :tournaments, through: :teams
  end