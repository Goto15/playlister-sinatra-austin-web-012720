class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/artists' do
    erb :'views/artists/index'
  end

  get '/artists/:slug' do
  end

  get '/genres' do
    erb :'views/genres/index'
  end

  get '/genres/:slug' do 
  end

  get '/songs' do
    erb :'views/songs/index'
  end

  get '/song/:slug' do
  end

end