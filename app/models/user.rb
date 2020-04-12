class User < ApplicationRecord
    has_many :contact_connections
    has_many :contacts, :through => :contact_connections, :source => :user_contact

    # has_many :user_messages
    # has_many :messages, through: :user_messages

    has_many :user_conversations
    has_many :conversations, through: :user_conversations


end
