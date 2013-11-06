require './davinci-sinatra.rb'

get "/" do
  halt erb(:browse)
end

# TODO: GET handler for routes like /isbn/1449397220, 
#       /isbn/1449325947, etc.

get "/isbn/:isbn" do #Set up handler for the GET /isbn/:isbn route
  isbn  = params["isbn"] #Assign and save the params key isbn to the isbn variable
  @book = Book.find_by(isbn: isbn) #load the rows from the Book table with the isbn values that match the value of the isbn variable
  #and assign it to the variable @book
  halt erb(:show) #render the view show and use the @book variable
end #end the GET hanlder block


# TODO: GET handler for routes like /year/2011, /year/2007, etc.
get "/year/:year" do #Set handler for the GET year/:year route
	year = params["year"]
	@books = Book.where(publication_year: year) #loads the rows from the Book table with the publication_year values
	#match the value of the year variable and assigns it to the @books variable
	@header = "Books published in #{year}" #loads the string Books published in along with a string interpolation
	#year (from row 19)and assigns it to the @header variable.
	halt erb(:search_results) #render the view search_results with the @header and @books variables.
end #end the GET handler block

# TODO: GET handler for routes like /author/Olsen,
#       /author/Crockford, etc.
get "/author/:last_name" do #Set up handler for the GET /author/:author route
	last_name = params["last_name"] #Assign and save the params key last_name to the last_name variable
	@books = Book.where("author ilike ?", "%#{last_name}%") #loads the rows from the Book table with the author values
	#containing the string interpolation last_name and assigns it to the @books variable.
	@headers = "Books by #{last_name}" #loads the string Books by along with the string interpolation #last_name from line
	#30 and assigns it to @headers variable.
	halt erb(:search_results) #render the view search_results with the @header and @books varialbe
end #end the GET handler block



# TODO: GET handler for routes like /topic/jQuery, /topic/CSS, etc.

get "/topic/:topic" do #Set handler for the GET topic/:topic route
	topic = params["topic"] #Assign and save the params key topic to the variable topic
	@books = Book.where("title ilike ?", "%#{topic}%") #loads the rows from the Book table with the title values
	#that contain any part of the string interpolation topic and assigns it to the @books variable.
	@headers = "Books about #{topic}" #loads the string Books about along with the string interpolation #topic
	#and assigns it to the @headers variable
	halt erb(:search_results) #render the view search_results with the @heders and @books variables
end #end the GET handler block




