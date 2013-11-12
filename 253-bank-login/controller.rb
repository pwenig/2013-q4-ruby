require './davinci-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  # There's no error to show; not necessary, just being clear...
  @error = nil

  halt erb(:login)
end

post "/login" do
  # TODO: Take the username and password that the user entered,
  username = params["username"]
  password = params["password"]
  found_user = User.find_by(username: username)
  
  if found_user == nil
    @error = "Unknown User"
    halt erb(:login)
  elsif password != found_user.password
    @error = "Incorrect Password"
    halt erb(:login)
  else
    session[:user_id] = found_user.id
    
  end



  redirect "/accounts"
end

get "/accounts" do
  
  # TODO: Load the user based on the id saved to the session
 @user = User.find(session[:user_id])
  halt erb(:accounts)
end

get "/location" do
  @user = User.find(session[:user_id]) 
  # TODO: Load the user based on the id saved to the session

  halt erb(:location)
end

get "/rates" do
  @user = User.find(session[:user_id]) 
  # TODO: Load the user based on the id saved to the session

  halt erb(:rates)
end

# TODO: Write handler for GET /logout that logs out the user
get "/logout" do
  session.clear
  redirect "/"
end









