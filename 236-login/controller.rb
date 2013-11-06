require './davinci-sinatra.rb'

get "/" do
  halt erb(:login)
end


post "/" do
	username = params["username"]
	pin = params["pin_number"]
	user = User.find_by(username: username)
	if user == nil
		@error = "Unknown username"
		@old_username = username
		halt erb(:login)
	elsif user.pin_number != pin #did we discuss what ! means?
		@error = "Wrong pin number"
		@old_username = username
		halt erb(:login)
	else redirect "/success"
	end
end


get "/create" do
	halt erb(:create)
end


post "/create" do
@user = User.new
@user.username = params["username"]
@user.pin_number = params["pin_number"]
@user.save!
redirect "/"
end


# TODO: Write a POST handler that either:
#   1. Shows the login page again with an error "Unknown username"
#   2. Or shows the login page again with the error "Wrong pin number"
#      (Bonus: pre-fill the username that the user entered last time)
#   3. Or redirects to /success

get "/success" do
  halt erb(:success)
end
