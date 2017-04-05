class API::V1::FeedsController < ApplicationController
  before_action :set_feed, only: [:show, :update, :destroy]

  # GET /feeds
  def index
    #@feeds = Feed.all
    @feeds = []
    Feed.all.each do |feed|
      feed = {
        feed: feed,
        source: get_mester(feed.mester_id),
        feed_duration: compare_dates(feed.created_at)
      }
      @feeds.push(feed)
    end

    render_pretty_json ({feeds: @feeds})

    #render json: @feeds
    #render_pretty_json(@feeds)
  end

  # GET /feeds/1
  def show
    #render json: @feed
    render_pretty_json(@feed)
  end

  # POST /feeds
  def create
    @feed = Feed.new(feed_params)

    if @feed.save
      render json: @feed, status: :created, location: @feed
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feeds/1
  def update
    if @feed.update(feed_params)
      render_pretty_json(@feed)
    else
      render json: @feed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feeds/1
  def destroy
    @feed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed
      @feed = Feed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feed_params
      params.require(:feed).permit(:body, :picture, :mester_id)
    end
end
