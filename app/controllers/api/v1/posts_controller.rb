module Api
    module V1

        class PostsController < ApplicationController


            def index
                render json: Post.all, include: ['users']
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

            private
            def post_params
                params.require(:post).permit(:title, :body, :user_id, :sneaker_id)
            end

        end
    end
end
