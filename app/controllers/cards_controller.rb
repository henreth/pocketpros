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
        cards = [];
        # bronze
        cards << Card.create!(user_id:1,character_id: Character.all.sample.id,rarity:0)
        # silver
        cards << Card.create!(user_id:1,character_id: Character.all.sample.id,rarity:0)
        # gold
        cards << Card.create!(user_id:1,character_id: Character.all.sample.id,rarity:0)
        # holo
        cards << Card.create!(user_id:1,character_id: Character.all.sample.id,rarity:3)
        render json: cards    
    end

end
