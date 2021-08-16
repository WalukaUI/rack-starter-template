class AddImageurlToTournaments < ActiveRecord::Migration[5.2]
  def change
    add_column :tournaments, :image_url, :string
  end
end
