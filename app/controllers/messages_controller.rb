class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
      end
    
      def create
        message = Message.create(message_params)
      
        if message.save
          ActionCable.server.broadcast 'messages',
            message: message,
            user: message.user.username,
            user_facing: true
          head :ok

          
        else 
          ActionCable.server.broadcast 'messages',
            errors: message.errors
        end
      end
    
      private
    
      def message_params
        params.require(:message).permit(:content, :user_id, :conversation_id)
      end
    
end
