class UsersController < ApplicationController
    skip_before_action :authorize, only: :create

    def index
        @users = User.all
        render json: @users
    end


    def update
        @current_user.update(user_params)
        render json: @current_user
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        render json: @current_user,include: "cards.character", status: :ok
    end

    def destroy
        user = @user
        user.destroy
        head :no_content
    end

    def buy_pack 
        # Update designated pack count
        @pack = params[:pack]
        @cost = params[:cost]
        if @current_user.credits < @cost
            updatedUser = 'ERROR: You do not have enough credits to purchase this pack.'
        else
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) + 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        # Update total pack count
        tot = @current_user.pack_count
        newpacks = @current_user.packs
        newpacks["total"] = tot
        @current_user.update!(packs: newpacks)
        updatedUser = @current_user
        end
        render json: updatedUser, status: :ok
    end


    private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(
          :id,
          :first_name,
          :last_name,
          :username, 
          :password, 
          :password_confirmation,  
          )
    end
end
