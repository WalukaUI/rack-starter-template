class UpdatePlayerColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :image_url, :string
    add_column :players, :runs, :integer
    add_column :players, :wikets, :integer
  end
end
