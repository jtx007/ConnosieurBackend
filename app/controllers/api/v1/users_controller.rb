module Api
    module V1       
        class UsersController < ApplicationController
                

            def ping
                render json: {message: "I'm awake"}
            end 

            def index
                @users = User.all
                render json: @users
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
                render :me
            end

            def me 
                
                if current_user
                    @user = current_user
                    render :me
                else
                    render json:{error: "Access Denied"},  status: :unprocessable_entity
                    
                end
            end


            private 

            def user_params
            params.require(:user).permit(:username, :password, :age, :city, :avatarUrl)
            end
        end

    end

end
