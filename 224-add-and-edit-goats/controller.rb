require './davinci-sinatra.rb'

get "/" do
  @goats = RacingGoat.all
  halt erb(:index)
end

get "/new_goat" do
  @goat = RacingGoat.new
  halt erb(:edit_or_new)
end

# TODO: POST handler for adding a new goat

get "/goats/:id" do
  id = params["id"]
  @goat = RacingGoat.find(id)
  halt erb(:edit_or_new)
end

# TODO: POST handler for editing a goat's information
