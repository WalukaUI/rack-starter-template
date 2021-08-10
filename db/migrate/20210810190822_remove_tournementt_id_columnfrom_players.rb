class RemoveTournementtIdColumnfromPlayers < ActiveRecord::Migration[5.2]
  def change
    remove_column :players, :tournament_id, :integer
  end
end
