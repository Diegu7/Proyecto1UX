class ChatRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chat_room = ChatRoom.involving(current_user)
    @chat_rooms_all = ChatRoom.all
  end

  def create
    if ChatRoom.between(params[:sender_id], params[:recepient_id]).present?
      @chat_room = ChatRoom.between(params[:sender_id], params[:recepient_id]).first
    else
      @chat_room = ChatRoom.create(chat_room_params)
    end

    redirect_to chat_room_path(@char_room)
  end

  def show
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title)
  end
end
