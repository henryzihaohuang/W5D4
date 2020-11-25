class CreateShortenedUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :shortened_urls do |t|
      t.string :long_url, null: false
      t.string :short_urls
      t.string :user_id
    end

    add_index :shortened_urls, :long_url, unique: true
    add_index :shortened_urls, :short_urls, unique: true
  end
end
