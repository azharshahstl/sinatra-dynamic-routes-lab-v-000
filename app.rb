require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name_reverse = params[:name].reverse 
    "#{@name_reverse}" 
  end
  
  get '/square/:number' do 
    @square_of_number = (params[:number].to_i)**2
    "#{@square_of_number}".to_s
  end
  
  get  '/say/:number/:phrase' do 
    
  end

end