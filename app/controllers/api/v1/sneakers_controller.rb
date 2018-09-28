module Api
    module V1

        class SneakersController < ApplicationController

            def index
                @sneakers = Sneaker.all
                render json: @sneakers
            end

            def show
                @sneaker = Sneaker.find(params[:id])
                render json: @sneaker
            end
        end
    end
end
