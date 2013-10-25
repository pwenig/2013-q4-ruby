require './davinci-sinatra.rb'

get "/" do
  @presidents = President.order(:id)
  halt erb(:index)
end

get "/new_president" do
  @president = President.new
  halt erb(:edit)
end

# TODO: write POST handler to create president

get "/presidents/:id" do
  id = params["id"]
  @president = President.find(id)
  halt erb(:edit)
end

# TODO: write POST handler to update president
