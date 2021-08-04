class CraeteTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
    t.string :name
    t.string :logo_url

    end
  end
end
