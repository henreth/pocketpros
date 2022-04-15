class CardsController < ApplicationController

    def index
        @cards = Card.all
        render json: @cards
    end

    def market_cards
        @cards = Card.all.where('for_sale!=false')
        render json: @cards
    end

    def show
        @card = Card.find_by(params[:id])
        render json: @card
    end

    def list_card
        @sale_price = params[:sale_price]

        @card = Card.find_by(params[:id])
        @card.update!(for_sale: true, sale_price: @sale_price)
        render json: @card
    end

    def unlist_card
        @card = Card.find_by(params[:id])
        @card.update!(for_sale: false, sale_price: nil)
        render json: @card
    end

    def booster_pack
        if Integer(@current_user.packs["booster"]) < 1
            cards = 'ERROR: You have no Booster Packs left to open.'
        else
        
        # Update Booster Pack Count
        @pack = "booster"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update User Total Pack Count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)


        cards = [];

        # Bronze
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        # Silver
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        # Gold
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)        
        cards = cards.shuffle
        end
        render json: cards    
    end

    def regular_pack
        if Integer(@current_user.packs["regular"]) < 1
            cards = 'ERROR: You have no Regular Packs left to open.'
        else
        
        # Update Regular Pack Count
        @pack = "regular"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update User Total Pack Count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)
        

        cards = []
        len = 8

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 10
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+ rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 2.5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+ rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        # Silver
        rand_silver1 = rand() * 100
        if rand_silver1 < 25
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+ rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        end

        rand_silver2 = rand() * 100
        if rand_silver2 < 20
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        end

        rand_silver3 = rand() * 100
        if rand_silver3 < 10
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        end

        # Bronze
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        }
        cards = cards.shuffle

    end
        render json: cards

    end

    def pro_pack
        if Integer(@current_user.packs["pro"]) < 1
            cards = 'ERROR: You have no Pro Packs left to open.'
        else
        
        # Update Pro Pack Count
        @pack = "pro"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update User Total Pack Count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)
        

        cards = []
        len = 7

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 1
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:3)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 20
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 18.5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        # Silver
        rand_silver1 = rand() * 100
        if rand_silver1 < 55
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        end

        rand_silver2 = rand() * 100
        if rand_silver2 < 50
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        end

        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)

        # Bronze
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        }
        cards = cards.shuffle
    end
        render json: cards
    end

    def max_pack
        if Integer(@current_user.packs["max"]) < 1
            cards = 'ERROR: You have no Max Packs left to open.'
        else
        
        # Update Max Pack Count
        @pack = "max"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update User Total Pack Count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)

        cards = []
        len = 6

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:3)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 15
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 30
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)

        # Silver
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        }
        cards = cards.shuffle
    end
        render json: cards
    end


    def ultra_pack
        if Integer(@current_user.packs["ultra"]) < 1
            cards = 'ERROR: You have no Ultra Packs left to open.'
        else
        
        # Update Ultra Pack Count
        @pack = "ultra"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update User Total Pack Count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)

        cards = []
        len = 4

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 15
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:3)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 35
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 30
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        end
        
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)

        # Silver
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        }
        cards = cards.shuffle
    end
        render json: cards
    end

    def studio_pack
        if Integer(@current_user.packs["studio"]) < 1
            cards = 'ERROR: You have no Studio Packs left to open.'
        else
        
        # Update Ultra Pack Count
        @pack = "studio"
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) - 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update User Total Pack Count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)

        cards = []
        len = 2

        # Holo
        rand_holo = rand() * 100
        if rand_holo < 25
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:3)
        end

        rand_holo = rand() * 100
        if rand_holo < 1
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:3)
        end

        # Gold
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        }
        cards = cards.shuffle
    end
        render json: cards
    end


end     
