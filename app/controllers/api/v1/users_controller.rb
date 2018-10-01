module Api
    module V1       
        class UsersController < ApplicationController
                

            def index
                @users = User.all
                render json: @users, include: ['posts']
            end

            def create
                @user = User.new(user_params)
                if @user.save
                    render json: @user, status: :created   
                else
                    render json: @user.errors, status: :unprocessable_entity 
                end
            end

            def show
                @user = User.find(params[:id])
                render json: @user
            
            end

            def me 
                if current_user
                    render json: current_user
                else
                    render json: current_user.errors, status: :unprocessable_entity
                    
                end
            end


            private 

            def user_params
            params.require(:user).permit(:username, :password, :age, :city, :avatarUrl)
            end
        end

    end

end
