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
    @new_string = params[:phrase]*params[:number].to_i
    "#{@new_string}"
  end
  
  get '/say/:word1/:word2' do 
    @phrase = []
    params.each |w| do 
      @phrase << params[:]
    "#{@phrase}"
  end

end