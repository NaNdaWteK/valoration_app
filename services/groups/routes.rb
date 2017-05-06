require 'sinatra/base'
require 'json'
require_relative './service'

class App < Sinatra::Base

  post '/add-group/save' do
    result = Groups::Service.add(request['group'])

    result.to_json
  end

  get '/groups/empty' do
    Groups::Service.empty
  end

end
