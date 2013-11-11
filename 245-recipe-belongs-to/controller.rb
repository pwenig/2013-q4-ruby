require './davinci-sinatra.rb'

get "/" do
  @recipes = Recipe.order(:id).all
  @title = "All recipes"
  halt erb(:index)
end

get "/recipe/:name" do
  name = params["name"]
  @recipe = Recipe.find_by(name: name)
  halt erb(:show)
end

# Add handler for routes like GET /by-author/Jim and GET /by-author/Jen
get "/by-author/:name" do
	name = params["name"]
	author = Author.find_by(first_name: name)
	@recipes = author.recipes
	@title = "Recipes by #{author.first_name}"
	halt erb(:index)
end

