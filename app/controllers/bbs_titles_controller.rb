class BbsTitlesController < ApplicationController

  def new
    @bbs_title = BbsTitle.new
  end

  def create
    @bbs_title = BbsTitle.new(bbs_title_params)
    @bbs_title.user_id = current_user.id
    if @bbs_title.save
    redirect_to bbs_titles_path
    else
    redirect_to new_bbs_title_path
    end
  end

  def index
    @bbs_titles = BbsTitle.order(updated_at: :desc).page(params[:page])
  end

  def show
     @bbs_title = BbsTitle.find(params[:id])
     @bbs_comment = BbsComment.new
  end

  def destroy
    @bbs_title = BbsTitle.find(params[:id])
    @bbs_title.destroy
    redirect_to bbs_titles_path
  end

  private

  def bbs_title_params
    params.require(:bbs_title).permit(:image, :title)
  end

end
