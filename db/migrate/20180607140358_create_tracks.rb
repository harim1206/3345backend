class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :release

      t.timestamps
    end
  end
end
