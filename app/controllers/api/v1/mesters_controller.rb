class API::V1::MestersController < ApplicationController
  before_action :set_mester, only: [:show, :update, :destroy]

  # GET /mesters
  def index
    @mesters = Mester.all

    #render json: @mesters
    render_pretty_json(@mesters)
  end

  # GET /mesters/1
  def show
    #render json: @mester
    render_pretty_json(@mester)
  end

  # POST /mesters
  def create
    @mester = Mester.new(mester_params)

    if @mester.save
      render json: @mester, status: :created, location: @mester
    else
      render json: @mester.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mesters/1
  def update
    if @mester.update(mester_params)
      #render json: @mester
      render_pretty_json(@people)
    else
      render json: @mester.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mesters/1
  def destroy
    @mester.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mester
      @mester = Mester.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mester_params
      params.require(:mester).permit(:name, :email, :profilePicture)
    end
end
