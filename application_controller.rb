require 'bundler'
Bundler.require
# require_relative 'models/volunteer.rb'

class MyApp < Sinatra::Base 

  get '/' do
#     v=Volunteer.new
#     @data=v.parse
    erb :index
  end
  
  get '/contact' do
    erb :contact
  end
  
  get '/home' do
#      v=Volunteer.new
#     @data=v.parse
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  

end