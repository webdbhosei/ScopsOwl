class OkaneChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "okane:message"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  def put_message (msg)
    ChatChannel.broadcast_to('message', msg['data'] )
  end
end
