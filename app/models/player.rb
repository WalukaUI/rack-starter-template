class Player < ActiveRecord::Base
    belongs_to :teams
    # belongs_to :tournament
  end