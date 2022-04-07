class CardsController < ApplicationController

    def index
        @cards = Card.all
        render json: @cards
    end

    def show
        @card = Card.find_by(params[:id])
        render json: @card
    end


    def booster_pack
        
    end

end
