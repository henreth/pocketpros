class TransactionsController < ApplicationController

    def find_all_tx
        @char_id = params[:char_id]
        @card_rarity = params[:rarity]

        all_transactions = Transaction.all.filter{|transaction| transaction.card.character.id == @char_id && transaction.card.rarity == @card_rarity}

        render json: all_transactions
    end
end
