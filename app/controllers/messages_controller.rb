class MessagesController < ApplicationController
    def index
        @messages = Message.joins(:chat => :app).
            where('apps.token': params[:app_token], 'chat.number': params[:chat_number])
        render json: @messages
    end
    def create
        @chat = Chat.lock.joins(:app).where('apps.token': params[:app_token], 'chats.number': params[:chat_number])[0]
        @chat.messages_count += 1
        @message = Message.create(number: @chat.messages_count, body: params[:body])
        @chat.message << @message
        @chat.save
        render json: @message.number
    end
    def show
        @message = Message.joins(:chat => :app).
            where('apps.token': params[:app_token], 'chats.number': params[:chat_number], number: params[:number])[0]
        render json: @message
    end
    def update
        @message = Message.joins(:chat => :app).
            where('apps.token': params[:app_token], 'chats.number': params[:chat_number], number: params[:number])[0]
        @message.body = params[:body]
        @message.save
    end
end
