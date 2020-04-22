require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do 
    erb :newteam
  end
  
  post '/team' do
    @team = params["name"]
    @coach = params["coach"]
    @pg = params["Point_Guard"]
    erb :team
  end
end
