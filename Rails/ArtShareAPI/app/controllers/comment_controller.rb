class CommentController < ApplicationController
    def index
        if params[:user_id]
            @comments=Comment.find(params[:user_id])
            elsif params[:artwork_id]
            @comments=Comment.find(params([:artwork_id]))
            else 
                @comments=Comment.all
        end
        render @comments
    end
    def create
        @comment=Comment.new(comment_params)

        if @comment.save
            flash[:success]="Saved!"
            render @comment
        else
            @comment.errors.full_messages.each do |err|
                flash[:danger]=err
            end
        end

    end
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: @comment
      end
    private
    def comment_params
        params.require(:comment).permit(:body, :user_id,:artwork_id)

    end
end
