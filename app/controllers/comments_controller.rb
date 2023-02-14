class CommentsController < ApplicationController

  def create
    comment = Comment.create(comment_params)
    redirect_to "/novels/#{comment.novel.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, novel_id: params[:novel_id])
  end
end
