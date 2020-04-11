class User < ApplicationRecord
    has_many :contact_connections
    has_many :contacts, :through => :contact_connections, :source => :user_contact
end
