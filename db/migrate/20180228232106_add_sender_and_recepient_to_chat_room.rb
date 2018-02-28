class AddSenderAndRecepientToChatRoom < ActiveRecord::Migration[5.1]
  def change
  	add_column :chat_rooms, :sender_id, :integer
  	add_column :chat_rooms, :recepient_id, :integer
  end
end
