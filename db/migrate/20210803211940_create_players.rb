class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
    t.string :name
    t.integer :age
    t.string :skill
    t.string :playing_category
    t.string :country
    t.integer :team_id
    t.integer :tournament_id
    end
  end
end
