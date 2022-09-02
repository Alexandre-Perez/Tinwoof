class ChatroomsController < ApplicationController

  def index
    @chatrooms = current_user.chatrooms

    @messages = Message.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @messages = Message.all
  end
end
