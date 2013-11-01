require './davinci-sinatra.rb'

get "/" do
  @cities = City.order(:id)
  halt erb(:index)
end

get "/cities/:id" do
  id    = params["id"]
  @city = City.find(id)
  halt erb(:show)
end
