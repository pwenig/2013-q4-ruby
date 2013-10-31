require './davinci-sinatra.rb'

get "/" do
  halt erb(:login)
end

# TODO: Write a POST handler that either:
#   1. Shows the login page again with an error "Unknown username"
#   2. Or shows the login page again with the error "Wrong pin number"
#      (Bonus: pre-fill the username that the user entered last time)
#   3. Or redirects to /success

get "/success" do
  halt erb(:success)
end
