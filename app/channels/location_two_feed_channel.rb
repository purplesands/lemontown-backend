class LocationTwoFeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "location_two_feed_channel"
  end

  def unsubscribed
    puts "unsub"
    x = Feed.find(params[:id])
    x.unsubscribe()
  end
end
