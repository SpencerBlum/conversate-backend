class Message < ApplicationRecord
    # has_many :user_messages
    # has_many :users, through: :user_messages

    has_many :conversation_message
    has_many :conversations, through: :conversation_message
end
