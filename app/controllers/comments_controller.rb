class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
    @comments = Comment.all
  end

  def create
   @comment = Comment.new(comment_params)
     @comment.save
      redirect_to new_comment_path
  end

   def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
 
    redirect_to new_comment_path
  end
  private
  def comment_params
    params.require(:comment).permit(:name, :comment)
  end
end
