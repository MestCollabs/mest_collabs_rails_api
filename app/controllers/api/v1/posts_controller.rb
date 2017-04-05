class API::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = []
    Post.all.each do |post|
      post = {
        post: post,
        mester: get_mester(post.mester_id),
        post_duration: compare_dates(post.created_at)
      }
      @posts.push(post)
    end

    #render json: {AllPosts: @posts}
    render_pretty_json({posts: @posts})
  end

  # GET /posts/1
  def show
    #render json: @post
    render_pretty_json(@post)
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      #render json: @post
      render_pretty_json(@post)
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    #Dutation Logic
    def time_duration (date_one, date_two)

    end
    #Get mester by id
    def get_mester(id)
      Mester.find(id)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def post_params
      params.require(:post).permit(:body, :picture, :mester_id)
    end
end
