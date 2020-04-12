class Conversation < ApplicationRecord

    has_many :user_conversations
    has_many :users, through: :user_conversations

    has_many :conversation_message
    has_many :messages, through: :conversation_message
end
