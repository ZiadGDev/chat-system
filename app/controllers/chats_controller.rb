class ChatsController < ApplicationController
    def index
        @app = App.find_by(token: params[:app_token])
        @chats = @app.nil? ? [] : @app.chat
        render json: @chats
    end
    def create
        @app = App.lock.find_by(token: params[:app_token])
        if (@app.nil?)
            return
        end

        @app.chats_count += 1
        @chat = Chat.create(number: @app.chats_count)
        @app.chat << @chat
        @app.save
    end
    def show
        @app = App.find_by(token: params[:app_token])
        @chat = @app.nil? ? nil : @app.chat.find_by(number: params[:number])
        render json: @chat
    end
end
