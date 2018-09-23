module Api
    module V1

        class SneakersController < ApplicationController


            def index
                @sneakers = Sneaker.all
                render json: @sneakers.limit(100)
            end
        end
    end
end
