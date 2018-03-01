class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room

   validates_presence_of :body, :chat_room_id, :user_id

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end
