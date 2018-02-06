class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :artist
      t.string :youtube_url
      t.string :img_url

      t.timestamps
    end
  end
end
