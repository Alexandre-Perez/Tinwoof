class DropUserChatroom < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_chatrooms, force: :cascade
  end
end
