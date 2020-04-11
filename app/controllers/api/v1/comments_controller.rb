
module Api
    module V1

        class CommentsController < ApplicationController


        

            def create
                if current_user
                    @comment = Comment.new(comment_params)
                    if @comment.save 
                        render :show, status: :created
                    else
                        render json:{error: "Not created"}, status: :unprocessable_entity
                    end
                else
                    render json:{error: "Not logged in"}, status: :unprocessable_entity
                end

            end

            def destroy
                if current_user    
                @comment = Comment.find(params[:id])
                    if @comment
                        @comment.destroy
                        render json:{"message": "Comment deleted"}, status: :gone
                    else
                        render json:{error: "Comment not found"}, status: :unproccessable_entity
                    end
                else
                    render json:{error: "Not Authorized for this action"}, status: :unproccessable_entity
                end
                
            end


        


            private
            def comment_params
                params.require(:comment).permit(:user_id, :text, :post_id)
            end

        end
    end
end
