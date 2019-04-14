class LocationOneFeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "location_one_feed_channel"
    puts "something big"
end


  def unsubscribed
    puts "unsub"
    x = Feed.find(params[:id])
    x.unsubscribe()
  end
end
