require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do 
    erb :newteam
  end
  
  post '/team' do
    @name = params["name"]
    @coach = params["coach"]
    @pg = params["Point_Guard"]
    @sg = params["Shooting_Guard"]
    @sf = params["Small_Forward"]
    @pf = params["Power_Forward"]
    @c = params["Center"]
    erb :team
  end
end
