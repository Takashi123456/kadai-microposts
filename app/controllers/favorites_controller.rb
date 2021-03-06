class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  
  def create#お気に入り登録
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに登録しました'
    redirect_to root_url
  end

  def destroy#お気に入り解除
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを解除しました'
    redirect_to root_url
  end
end
