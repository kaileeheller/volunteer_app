require 'bundler'
Bundler.require
require_relative 'models/pig_latinize.rb'
class MyApp < Sinatra::Base 

  get '/' do
    erb :index
  end

  post '/results' do
    user_sentence=params[:sentence]
    @translated_sentence=to_pig_latin(user_sentence)
    erb :results 
  end

end