class CreateReleases < ActiveRecord::Migration[5.2]
  def change
    create_table :releases do |t|
      t.string :resource_url
      t.integer :playlist_id

      t.timestamps
    end
  end
end
