require 'sinatra/base'
require './lib/message.rb'

class SecretMessage < Sinatra::Base
    enable :sessions
    
    
   get '/' do
       @secret_message = Message.new
       erb :index
   end 
   
   
  post '/decryption' do
       @answer = params[:answer].to_i
       if @answer == 40 || @answer == 41 || @answer == 42 || @answer == 43
         @secret_message = Message.new
         @secret_message.message_decrypter(@answer)
         erb :index
       else
         erb :error
       end
         
   end
   
  
    
    run! if app_file == $0
end