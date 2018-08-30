class AddImgurlToTrack < ActiveRecord::Migration[5.2]
  def change
    add_column :tracks, :imgurl, :string
  end
end
