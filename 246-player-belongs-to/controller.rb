require './davinci-sinatra.rb'

get "/" do
  @players = Player.order(:name)
  halt erb(:index)
end

get "/players/:id" do
  id = params["id"]
  @player = Player.find(id)
  halt erb(:show)
end
