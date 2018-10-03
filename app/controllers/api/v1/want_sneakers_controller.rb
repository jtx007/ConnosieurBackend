module Api
    module V1
        class WantSneakersController < ApplicationController

            def create
                if current_user
                    @want_sneaker = WantSneaker.new(sneaker_params)
                    if @want_sneaker.save
                        render json: @want_sneaker, status: :created
                    else
                        render json:{error: "Not created" }, status: :unprocessable_entity
                    end
                else
                    render json:{error: "Not logged in"}, status: :unproccessable_entity
                end
            end

            private
            def sneaker_params
                params.require(:want_sneaker).permit(:user_id, :sneaker_id)
            end
        end
    end
end
