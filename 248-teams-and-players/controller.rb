require './davinci-sinatra.rb'

get "/" do
  @teams = Team.order(:name)
  halt erb(:index)
end

get "/teams/:name" do
  name = params["name"]
  @team = Team.find_by(name: name)
  halt erb(:show)
end
