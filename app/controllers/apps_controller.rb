class AppsController < ApplicationController
    def index
        @apps = App.all
        render json: @apps
    end
    def create
        @app = App.create(name: params[:name])
        @app.save
    end
    def show
        @app = App.find_by(token: params[:token])
        render json: @app
    end
    def update
        @app = App.find_by(token: params[:token])
        @app.name = params[:name]
        @app.save
    end
end