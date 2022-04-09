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
        if Integer(@current_user.packs["booster"]) < 1
            cards = 'No booster packs avaiable to open'
        else
        

        @pack = "booster"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
            
        cards = [];

        # Bronze
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:0)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:0)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:0)
        # Silver
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        # Gold
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end
        render json: cards    
    end

    def regular_pack
        cards = []
        len = 12

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 15
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 10
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        # Silver
        rand_silver1 = rand() * 100
        if rand_silver1 < 30
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        end

        rand_silver2 = rand() * 100
        if rand_silver2 < 30
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        end

        rand_silver3 = rand() * 100
        if rand_silver3 < 10
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        end

        # Bronze
        newLength = len - cards.length;

        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:0)
        }
        render json: cards
    end

    def pro_pack
        cards = []
        len = 8

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:3)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 25
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 20
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        # Silver
        rand_silver1 = rand() * 100
        if rand_silver1 < 55
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        end

        rand_silver2 = rand() * 100
        if rand_silver2 < 55
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        end

        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)

        # Bronze
        newLength = len - cards.length;

        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:0)
        }
        render json: cards
    end

    def max_pack
        cards = []
        len = 6

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:3)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 15
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 50
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)

        # Silver
        newLength = len - cards.length;

        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        }
        render json: cards
    end


    def ultra_pack
        cards = []
        len = 4

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 15
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:3)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 35
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 70
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        end
        
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:2)

        # Silver
        newLength = len - cards.length;

        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id,rarity:1)
        }
        render json: cards
    end


end     
