class ChatroomsController < ApplicationController

  def index
    @chatrooms = current_user.chatrooms
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    @messages = Message.all
  end
end
