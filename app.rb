require 'sinatra'

get '/' do
  @title = 'Home'
  erb :index
  @time = Time.now
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrome'
  erb :palindrome
end