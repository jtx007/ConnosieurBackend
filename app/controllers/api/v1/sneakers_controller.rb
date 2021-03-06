module Api
    module V1

        class SneakersController < ApplicationController

            def index
                
                if !params[:filter].blank? 
                    @sneakers = Sneaker.where("LOWER(title) LIKE ? ", "%#{params[:filter].downcase}%")
                else
                    @sneakers = Sneaker.all.page(params[:page]).per_page(75)
                end
                render json: @sneakers


            end

            def show
                @sneaker = Sneaker.find(params[:id])
                render json: @sneaker
            end

            private
            def shoe_params
                params.permit(:filter, :page)
            end


        end
    end
end
