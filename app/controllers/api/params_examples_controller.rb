class Api::ParamsExamplesController < ApplicationController
  def query_params_action
    @my_message = params["my_message"] #params keyword is not accessed except in the controller file 
    @butter = params["other"]
    @jamal = params["name"]
    render 'query_params_view.json.jb'
  end

  def segment_params_action
    @message = params[:wildcard]
    render "segment_params_action.json.jb"
  end

  def form_params_action
    @message = params['message']
    render "form_params.json.jb"
  end
end
