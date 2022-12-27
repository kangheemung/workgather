class PostsController < ApplicationController
  include  UserSessionsHelper
    def create
      @post=Post.new(post_params)
       @post.user_workshop_id=params[:id]
       if @post.save 
        redirect_to users_workshops_show_path(@post.workshop_id)
       else
        redirect_to users_workshops_show_path(post.workshop_id)
       end
    end
    def edit
      @post=Post.find(params[:id])
    end
    def update
      @post=Post.find(params[:id])
      if @post.update(post_params)
          #  session[:planner_id]=planner.id
          flash[:notice]="参加者レビュー情報を更新しました。"
          redirect_to users_workshops_new_path(@post.workshop_id)
      else
        render :edit
      end
    end
    private
    def post_params
      params.require(:post).permit(:title,:content,:image,:workshop_id,:score,:user_id )
    end 
end