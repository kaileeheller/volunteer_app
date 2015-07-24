require 'bundler'
Bundler.require
# require_relative 'models/volunteer.rb'
# require_relative './organizations.csv'
class MyApp < Sinatra::Base 

  get '/' do
#      v=Volunteer.new
     @data=parse
    erb :index
  end
  
  get '/contact' do
    erb :contact
  end
  
  get '/home' do
#       v=Volunteer.new
     @data=parse
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  def parse
    rows=[]
    IO.foreach("./organizations.csv") do |line| 
      lst=line.split(",")
      row={
        :name => lst[0],
        :address => lst[1],
        :phone => lst[2],
        :age => lst[3],
        :website => lst[4],
        :tags => lst[5] }
      rows.push(row)
    end
    return rows
  end
  

end