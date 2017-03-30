class ApplicationController < ActionController::API

  before_action :authenticate_request

  attr_reader :current_app

  #Include Serialization...
  include ActionController::Serialization

  #function to render pretter json
  def render_pretty_json(params)
    render json: JSON.pretty_generate(params.as_json)
  end

  private

   def authenticate_request
     @current_app = AuthorizeApiRequest.call(request.headers).result
     render json: { error: 'Not Authorized' }, status: 401 unless @current_app
   end
end
