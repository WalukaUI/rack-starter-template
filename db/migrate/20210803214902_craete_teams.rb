class CraeteTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
    t.string :name
    t.integer :player_id
    t.integer :tournament_id

    end
  end
end
