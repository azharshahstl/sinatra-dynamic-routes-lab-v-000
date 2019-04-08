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
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @phrase = []
    params.each_value {|value| @phrase << value} 
    @phrase.join(" ")
    #binding.pry
  end
  
  get '/:operation/:number1/:number2' do 
    
  end 

end