class AdminController < ApplicationController

  def index
    @users = User.all
  end

  def posts
    @posts = Post.all
  end

  def movies
    @movies = Movie.all
  end

  def reviews
    @reviews = Review.all
  end

  def posts_destroy
    # 특정 게시글을 지운다.
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :back, notice: "#{params[:id]}번 게시글이 삭제되었습니다."
  end

  def reviews_destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back, notice: "#{params[:id]}번 게시글이 삭제되었습니다."
  end

  def to_manager
    @user = User.find(params[:id])
    @user.update(
      role: "manager"
    )
    flash[:notice] = "매니저로 승급 되었습니다"
    redirect_to :back
  end

  def to_user
    @user = User.find(params[:id])
    @user.update(
      role: "user"
    )
    flash[:notice] = "양민이 되었습니다"
    redirect_to :back
  end


end
