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
        @pack = params[:pack]
        newpacks = @current_user.packs
        newval = Integer(newpacks[@pack]) + 1
        newpacks[@pack] = newval
        @current_user.update!(packs: newpacks)
        render json: @current_user, status: :ok
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
