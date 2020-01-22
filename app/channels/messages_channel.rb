class MessagesChannel < ApplicationCable::Channel
    def subscribed
      p params[:data]
      stream_from "messages"
    end
  
    # def random
    #   byebug
    # end
  end