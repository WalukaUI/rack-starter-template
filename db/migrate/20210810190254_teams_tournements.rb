class TeamsTournements < ActiveRecord::Migration[5.2]
  def change
    create_table :teams_tournements do |t|
      t.integer :team_id
      t.integer :tournament_id
    end
  end
end
