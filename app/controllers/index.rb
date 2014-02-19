get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do

  # get user credentials
  # check, and set session
  # if login is correct
end

get '/shorty' do
  # check if user logged in
  # if so, render shorty page
  # else, redirect to sign in page
  erb :shorty
end

get '/logout' do
  # delete session
  # redirect home
end

get '/signup' do
  erb :signup
end

post '/signup' do
  # create user
end
