class ChatChannel < ApplicationCable::Channel
  # Note: subscribed & unsubscribed are similar to file open/close

  # Called when the consumer has successfully
  # become a subscriber to this channel.
  def subscribed
    # stream_from "chat_#{params[:room]}"

    current_user.appear
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    ActionCable.server.broadcast("chat_#{params[:room]}", data)
  end

  def speak
  end
end
