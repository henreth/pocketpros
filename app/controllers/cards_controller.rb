class CardsController < ApplicationController

    def index
        @cards = Card.all
        render json: @cards
    end

    def user_cards
        render json: @current_user.cards
    end

    def find_cards_relative 
        @char_id = params[:char_id]

        all_cards = Card.all.filter{|card| card.character_id==@char_id}
        

        render json: all_cards
    end

    def find_cards_strict
        @char_id = params[:char_id]
        @card_rarity = params[:rarity]

        all_cards = Card.all.filter{|card| card.character_id==@char_id && card.rarity == @card_rarity}        

        render json: all_cards
    end

    def find_card_owners
        @char_id = params[:char_id]
        @card_rarity = params[:rarity]

        all_cards = Card.all.filter{|card| card.character_id==@char_id && card.rarity == @card_rarity}        
        card_owners = all_cards.map{|card| User.find_by(id: card.user_id)}.uniq

        render json: card_owners

    end

    def market_cards
        @cards = Card.all.where('for_sale!=false')
        render json: @cards
    end

    def find_listings
        @char_id = params[:char_id]
        @card_rarity = params[:rarity]        

        @cards = Card.all.where('for_sale!=false')
        @listings = @cards.filter{|card| card.character_id==@char_id && card.rarity == @card_rarity}
    
        render json: @listings
    end

    def show
        @card = Card.find_by(params[:id])
        render json: @card
    end

    def list_card
        @sale_price = params[:sale_price]
        @id = params[:id]

        @card = Card.find_by(id: @id)
        @card.update!(for_sale: true, sale_price: @sale_price)
        render json: @card
    end

    def unlist_card
        @id = params[:id]

        @card = Card.find_by(id: @id)
        @card.update!(for_sale: false, sale_price: nil)
        render json: @card
    end

    def buy_card
        @card_id = params[:card_id]
        @card = Card.find_by(id: @card_id)
        @card_seller = User.find_by(id: @card.user_id)

        @sale_price = @card.sale_price

        if @current_user.credits < @sale_price
           message = 'ERROR: You do not have enough credits to buy this card.' 
        else

        @newbuyercredits = @current_user.credits - @sale_price
        @current_user.update!(credits: @newbuyercredits)
        @newsellercredits = @card_seller.credits + @sale_price
        @card_seller.update!(credits: @newsellercredits)
        @card.update!(for_sale: false, sale_price: nil, user: @current_user)

        Transaction.create(card_id: @card_id, from_id: @card_seller.id, to_id: @current_user.id, sale_price: @sale_price)

        message = @current_user

        end 
        render json: message
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
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)

        # Silver
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        # Gold
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)        
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)

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
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 2.5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+ rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Silver
        rand_silver1 = rand() * 100
        if rand_silver1 < 25
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+ rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_silver2 = rand() * 100
        if rand_silver2 < 20
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_silver3 = rand() * 100
        if rand_silver3 < 10
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Bronze
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
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
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 20
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 18.5
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Silver
        rand_silver1 = rand() * 100
        if rand_silver1 < 55
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_silver2 = rand() * 100
        if rand_silver2 < 50
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)

        # Bronze
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:0)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
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
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 15
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 30
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        
        # Silver
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
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
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Gold 
        rand_gold1 = rand() * 100
        if rand_gold1 < 35
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_gold2 = rand() * 100
        if rand_gold2 < 30
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end
        
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
        Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        
        # Silver
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:1)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
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
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        rand_holo = rand() * 100
        if rand_holo < 1
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:3)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        end

        # Gold
        newLength = len - cards.length;
        newLength.times {|i| 
            cards << Card.create!(user_id:@current_user.id,character_id: Character.all.sample.id, unique_id: 'c'+rand(9).to_s + SecureRandom.alphanumeric(10), for_sale: false, rarity:2)
            Transaction.create(card_id: Card.all[Card.all.size-1].id, to_id: @current_user.id)
        }
        cards = cards.shuffle
    end
        render json: cards
    end


end     
