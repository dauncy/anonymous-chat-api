class ConversationsController < ApplicationController

    def index
        conversations = Conversation.all
        render json: conversations, :include => :messages
    end 

    def show
        conversation = Conversation.find(params[:id])
        render json: conversation, :include => :messages
    end 

    def create 
        conversation = Conversation.create(conversation_params)
        render json: conversation
    end 

    def destroy
        conversation = Conversation.find(params[:id])
        conversation.destroy
    end 

    private
    def conversation_params
        params.require(:conversation).permit(:receiver_id, :sender_id)
    end 
end
