require 'sinatra/base'

class App < Sinatra::Base

  TASKS = []

  get '/' do
    erb :index, locals:{tasks: TASKS}
  end

  get '/new' do
    erb :new
  end

  post '/' do
    task = params[:create_task]
    TASKS << task
    redirect '/'
  end

end