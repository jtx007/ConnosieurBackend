module Api
    module V1       
        class UsersController < ApplicationController
                

            def ping
                render json: {message: "I'm awake"}
            end 

            def index
                if !params[:username].blank?
                    @user = User.find_by_username(params[:username])
                    render :show
                else

                @users = User.all
                render json: @users
                end

            end

            def create
                @user = User.new(user_params)
                if @user.save
                    render json: @user, status: :created   
                else
                    render json: {"message": "User not created"}, status: :unprocessable_entity 
                end
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
            params.require(:user).permit(:username, :password, :age, :city, :avatarUrl, :bio)
            end
        end

    end

end
