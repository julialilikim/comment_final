class CommentsController < ApplicationController
  before_action :set_memo
  before_action :set_comment, only: :destroy
  
  def create
    @comment = @memo.comments.new(comment_params)
    @comment.save
  end

  def destroy
    @comment.destroy
  end
  
  private
  def set_memo
   @memo = Memo.find(params[:memo_id])
  end
  
  def set_comment
  @comment = @memo.comments.find(params[:id])
  end
  
  def comment_params
  params.require(:comment).permit(:body)
  end
end
