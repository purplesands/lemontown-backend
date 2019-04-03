class LocationOneFeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "location_one_feed_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
