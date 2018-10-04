module Api
    module V1

        class PostsController < ApplicationController


            def index
                @posts = Post.all
                render :index
            end

            

            def create 
                if current_user 
                @post = Post.new(post_params)
                    if @post.save
                        render json: @post, status: :created
                    else
                        render json: @post.errors, status: :unprocessed_entity
                    
                    end
                end
            end

            def delete
                if current_user
                    @post = Post.find(params[:id])
                    @post.destroy
                    render json: @post, status: :gone
                end
            end

            private
            def post_params
                params.require(:post).permit(:title, :body, :user_id, :sneaker_id)
            end

        end
    end
end
