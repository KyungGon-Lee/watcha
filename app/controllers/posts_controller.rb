class PostsController < ApplicationController
<<<<<<< HEAD
  before_action :authenticate_user!, except: [:index, :privacy] #인덱스 빼고 다
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # 이거 쓰면 레이아웃 적용 안됨
  # layout false

=======
  before_action :authenticate_user!, except: [:index] #인덱스 빼고 다
  before_action :set_post, only: [:show, :edit, :update, :destroy]

>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
<<<<<<< HEAD
    # @comments = Comment.all
    # @post 안에 들어있어서 필요 없음
=======
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

<<<<<<< HEAD
  def comments
    Comment.create(
      content: params[:content],
      user_id: current_user.id,
      post_id: params[:id]
    )
    # comment.save
    redirect_to :back

  end

  def privacy
    # render Rails.root.join('app', 'views', 'etc', 'promise.html.erb')
    # render nothing: true
    render template:'etc/promise'
  end

=======
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end
<<<<<<< HEAD
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :image)
    end

=======

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content)
    end
>>>>>>> d776ad36555d0bcbb98e84e500a8907a61ae41d5
end
