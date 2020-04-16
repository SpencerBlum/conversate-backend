class CreateConversationMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :conversation_messages do |t|
      t.integer :conversation_id
      t.integer :message_id

      t.timestamps
    end
  end
end
