class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom
  def create
    message = @chatroom.messages.new(message_params)
    message.user = current_user
    message.save
    redirect_to @chatroom
    #MessageRelayJob.perform_later(message)
  end
  def chat_create
    message_params = {
      :user => current_user,
      :chatroom => @chatroom,
      :body => params['body']
    }
    message = Message.new( message_params)
    session['chat_message'] = @chatroom.messages.order(created_at: :desc).limit(100).reverse
    message.save
    redirect_to params[:goback_to]
  end
  private
    def set_chatroom
      @chatroom=Chatroom.find(params[:chatroom_id])
    end
    def message_params
      params.require(:message).permit(:body)
    end
end
