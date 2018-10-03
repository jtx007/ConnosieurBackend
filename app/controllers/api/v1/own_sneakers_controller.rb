module Api
    module V1
            class OwnSneakersController < ApplicationController


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

            private
            def sneaker_params
                params.require(:own_sneaker).permit(:user_id, :sneaker_id)
            end

        end
    end
end
