class ChatsController < ApplicationController
    def index
        @chats = Chat.joins(:app).where('apps.token': params[:app_token])
        render json: @chats
    end
    def create
        @app = App.lock.find_by(token: params[:app_token])
        @app.chats_count += 1
        @chat = Chat.create(number: @app.chats_count)
        @app.chat << @chat
        @app.save
        render json: @chat.number
    end
    def show
        @chat = Chat.joins(:app).where('app.token': params[:app_token], number: params[:number])[0]
        render json: @chat
    end
end
