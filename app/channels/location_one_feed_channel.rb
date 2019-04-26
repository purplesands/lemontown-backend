class LocationOneFeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "location_one_feed_channel"
  end

  def unsubscribed
    puts "unsub"
    x = Feed.find(params[:id])
    x.unsubscribe()
  end
end
