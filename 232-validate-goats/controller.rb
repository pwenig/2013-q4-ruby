require './davinci-sinatra.rb'

get "/" do
  @goats = RacingGoat.all
  halt erb(:index)
end

get "/new_goat" do
  @goat = RacingGoat.new
  halt erb(:edit)
end

post "/new_goat" do
  @goat                    = RacingGoat.new
  @goat.name               = params["name"]
  @goat.gender             = params["gender"]
  @goat.best_100m_time     = params["best_100m_time"]
  @goat.dietary_preference = params["dietary_preference"]
  @goat.save!
  redirect "/"
end

get "/goats/:id" do
  id = params["id"]
  @goat = RacingGoat.find(id)
  halt erb(:edit)
end

post "/goats/:id" do
  id = params["id"]
  @goat = RacingGoat.find(id)
  @goat.name               = params["name"]
  @goat.gender             = params["gender"]
  @goat.best_100m_time     = params["best_100m_time"]
  @goat.dietary_preference = params["dietary_preference"]
  @goat.save!
  redirect "/"
end
