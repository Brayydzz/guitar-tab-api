class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.references :tuning, null: false, foreign_key: true

      t.timestamps
    end
  end
end
