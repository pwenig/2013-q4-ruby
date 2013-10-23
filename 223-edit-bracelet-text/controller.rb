require './davinci-sinatra.rb'

get "/" do
  @lines = BraceletLine.order(:id)
  halt erb(:index)
end

get "/lines/:id" do
  id = params["id"]
  @line = BraceletLine.find(id)
  halt erb(:edit)
end

# TODO: write POST handler
