class CreateTweetPosts < ActiveRecord::Migration
  def change
    create_table :tweet_posts do |t|

      t.timestamps null: false
    end
  end
end
