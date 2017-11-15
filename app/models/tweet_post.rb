class TweetPost < ActiveRecord::Base
  def initialize
    time = Time.now

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["CONSUMER_KEY"]
      config.consumer_secret     = ENV["CONSUMER_SECRET"]
      config.access_token        = ENV["ACCESS_TOKEN"]
      config.access_token_secret = ENV["ACCESS_SECRET"]
    end

    client.update "User viewed page at " + time.asctime
    p "User viewed page at " + time.asctime
  end
end
