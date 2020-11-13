class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :body
      t.string :youtube_url

      t.timestamps
    end
  end
end
