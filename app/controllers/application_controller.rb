class ApplicationController < ActionController::Base
  # protect_from_forgery with: :null_session
  def query_params_action
    @my_message = params["my_message"]
    @butter = params["other"]
    @jamal = params["name"]
    render 'query_params_view.json.jb'
  end
end
