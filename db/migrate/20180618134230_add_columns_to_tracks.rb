class AddColumnsToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :url, :string
    add_column :tracks, :description, :string
    add_column :tracks, :duration, :string
    add_column :tracks, :label, :string
    add_column :tracks, :catno, :string
    add_column :tracks, :library_id, :integer
    add_column :tracks, :playlist_id, :integer
    add_column :tracks, :resource_url, :string
  end
end
