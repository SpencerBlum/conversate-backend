class Message < ApplicationRecord

    has_many :conversation_messages
    has_many :conversations, through: :conversation_messages
end
