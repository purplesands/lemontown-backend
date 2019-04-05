class LocationTwoFeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "location_two_feed_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
