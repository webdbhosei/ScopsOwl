class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat:message"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def put_message (msg)
    usr = SmplChatsController.write(msg['data'])
    ChatChannel.broadcast_to('message', usr + ":" + msg['data'] )
  end
end
