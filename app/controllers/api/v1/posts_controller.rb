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
                        render :show, status: :created
                    else
                        render json: @post.errors, status: :unprocessed_entity
                    
                    end
                end
            end

            def show
                @post = Post.find(params[:id])
                render :show
            end


            def update
                if current_user
                    @post = Post.find(params[:id])
                    @post.update(post_params)
                    @post.save
                    render :show
                end
            end

            def destroy
                if current_user
                    @post = Post.find(params[:id])
                    if @post
                        @post.destroy
                        render json:{message:"post is deleted"}, status: :gone
                    else
                        render json:{error: "Does not exist"}, status: :unprocessable_entity
                    end
                else 
                    render json:{error: "Not logged in"}, status: :unprocessable_entity

                end

            end

        

            private
            def post_params
                params.require(:post).permit(:title, :body, :user_id, :sneaker_id, :likes, :dislikes)
            end

            

        end
    end
end
