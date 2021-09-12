require 'sinatra'
require 'mhartl_palindrome'


get '/' do
  @title = 'Home'
  @time = Time.now
  erb :index
  
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrome'
  erb :palindrome
end

post '/check' do
  raise params.inspect
end
