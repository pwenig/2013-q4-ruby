require './davinci-sinatra.rb'

get "/" do
  @languages = Language.order(:id)
  halt erb(:index)
end

get "/new_language" do
  @language = Language.new
  halt erb(:edit)
end

# TODO: write a POST handler to create a language

get "/languages/:id" do
  id         = params["id"]
  @language  = Language.find(id)
  halt erb(:edit)
end

# TODO: write a POST handler to update a language
