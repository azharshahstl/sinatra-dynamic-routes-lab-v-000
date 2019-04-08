require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    name_reverse = :name.reverse 
    "#{name_reverse}" 

end