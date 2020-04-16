class ConversationsController < ApplicationController

    def show
        conversation = Conversation.find_by(id: params[:id])
        render json: conversation
    end

    def create
        
        convo = Conversation.new(to_user_id: params["to_user_id"], from_user_id: params["from_user_id"])
        convo.save
        c1= UserConversation.new(user_id: params["to_user_id"], conversation_id: convo.id )
        c1.save
        c2= UserConversation.new(user_id: params["from_user_id"], conversation_id: convo.id)
        c2.save
        conversation = Conversation.find_by(id: convo.id)
        render json: conversation
    end
end
