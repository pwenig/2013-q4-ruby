require './davinci-sinatra.rb'

#set up handler for the / route
get "/" do
	#loads all rows from Recipe table and sorts them by id. assigns to @recipes variable
  @recipes = Recipe.order(:id).all
  #assign @title variable to the string "All recipes" to be used in header
  @title = "All recipes"
  #renders index view
  halt erb(:index)
end

#set handler for recipe/name route
get "/recipe/:name" do
	#assigns what's after the /recipe path to name variable
  name = params["name"]
  #finds thr rows where the name matches the name variable and assign to @recipe
  @recipe = Recipe.find_by(name: name)
  #renders show view
  halt erb(:show)
end

# Add handler for routes like GET /by-author/Jim and GET /by-author/Jen
# Set up handler for /by author/name route
get "/by-author/:name" do
	#what was after /by-author in the url path? Assign to name varaible
	name = params["name"]
	#Find the rows with a first_name that matches the name variable and assign to author
	author = Author.find_by(first_name: name)
	#Query the rows where author_id matches the id for the author in the name of the url and assign to @recipes variable
	@recipes = Recipe.where(author_id: author.id) 
	#sets the @title variable to Recipes by first_name so it can be displayed in the header
	@title = "Recipes by #{author.first_name}"
	halt erb(:index)
end

