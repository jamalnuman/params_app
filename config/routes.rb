Rails.application.routes.draw do
  namespace :api do

    get "/query_params_url" => "params_examples#query_params_action"
    get "/segment_params/:wildcard" => 'params_examples#segment_params_action' # the colons designate the wildcard, the word after the colons are variable and this variable must match the variable in the params name within the action in the controller 
    post "/body_params_url" => 'params_examples#form_params_action'
  end
end
