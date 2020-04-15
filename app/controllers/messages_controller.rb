class MessagesController < ApplicationController

    def create
        message = Message.new(user_id: params["user_id"], conversation_id: params["conversation_id"], message: params["message"])
        message.save
        conversation = Conversation.find_by(id: params["conversation_id"])
        render json: conversation
    end
end
