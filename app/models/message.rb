class Message < ApplicationRecord
    has_many :user_messages
    has_many :users, through: :user_messages
end
