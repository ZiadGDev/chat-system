class AppsController < ApplicationController
    def create
        @app = App.create(name: params[:name])
        @app.save
    end
end
