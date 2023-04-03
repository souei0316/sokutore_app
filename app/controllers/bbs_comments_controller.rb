class BbsCommentsController < ApplicationController


  def create
   bbs_title = BbsTitle.find(params[:bbs_title_id])
   comment = current_user.bbs_comments.new(bbs_comment_params)
   comment.bbs_title_id = bbs_title.id
   if comment.save
    redirect_to bbs_title_path(bbs_title)
   else
    redirect_to bbs_title_path(bbs_title)
   end
  end

  def destroy
    BbsComment.find_by(id: params[:id]).destroy
    redirect_to bbs_title_path(params[:bbs_title_id])
  end

  private

  def bbs_comment_params
    params.require(:bbs_comment).permit(:comment)
  end
end
