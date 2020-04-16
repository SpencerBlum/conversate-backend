class MessagesController < ApplicationController

    def create
        # byebug
        message = Message.new(user_id: params["user_id"], message: params["message"])
        message.save
        conversation = Conversation.find_by(id: params["conversation_id"])
        conversation_message = ConversationMessage.create(conversation_id: params["conversation_id"], message_id: message.id)
        # conversation.message << message
        render json: conversation
        
    end
end
