class CharactersController < ApplicationController

    def index
        @chars = Character.all
        render json: @chars
    end

    def show
        @char = Character.find_by(params[:id])
        render json: @char
    end

end
