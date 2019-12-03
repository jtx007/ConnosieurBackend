module Api
    module V1
        class OwnSneakersController < ApplicationController



                def index
                    @own_sneakers = OwnSneaker.all
                    render json: @own_sneakers
                    
                end


            def create 
                if current_user 
                    @own_sneaker = OwnSneaker.new(sneaker_params)
                    if @own_sneaker.save
                        render json: @own_sneaker, status: :created
                    else
                        render json:{error: "Access Denied"},  status: :unprocessable_entity
                    end
                else
                    render json:{error: "Not logged in"}, status: :unprocessable_entity
                end
            end


            def destroy 
                if current_user
                    @own_sneaker = OwnSneaker.find(params[:id])
                    if @own_sneaker
                        @own_sneaker.destroy
                        render json: @own_sneaker, status: :accepted
                    else
                        render json:{error: "Does not exist"}, status: :unprocessable_entity
                    end
                else
                    render json:{error: "Not logged in"}, status: :unprocessable_entity
                end
            end


            private
            def sneaker_params
                params.require(:own_sneaker).permit(:user_id, :sneaker_id)
            end

        end
    end
end
