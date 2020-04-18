class User < ApplicationRecord
    has_many :contact_connections
    has_many :contacts, :through => :contact_connections, :source => :user_contact

    # has_many :user_messages
    # has_many :messages, through: :user_messages

    has_many :user_conversations
    has_many :conversations, through: :user_conversations, :dependent => :destroy

 

    def self.user_specific_contact(id)
        #return a list of all user that arent already this users contacts and not self

        #users contacts
        userContacts = User.find(id).contacts
        
        userContactId = userContacts.map {|user| user.id}
        #All users
        allUsers = User.all
        array = []
        allUsers.each do |user|
            
            if !(userContactId.include?(user.id)) && user.id.to_i != id.to_i
                array.push(user)
            end 
        end
        return array
    end


    def self.user_noConvo(id)
        
        ##list of all contacts

        user = User.find(id)
        userContacts = user.contacts

        ##list of all conversations
        allConvos = user.conversations

        convo_userids = allConvos.map {|convo|  convo.to_user_id}
        ##return: list of all contacts that dont have conversations with you 
        noConvoUsers = []

        userContacts.each do |contact|
        ## keep if contact id is not in conversation id 
            if !convo_userids.include?(contact.id) 
                noConvoUsers.push(contact)
            end

        end

        return noConvoUsers

    end

    
end
