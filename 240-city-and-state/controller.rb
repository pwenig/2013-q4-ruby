require './davinci-sinatra.rb'

get "/" do #Set up the hanlder for the GET / route
  @cities = City.order(:id) #loads all cities from the City table in order by id and assigns to the
  #instance variable @cities. Gives us multiple of records back whic is a relation or list of things.
  halt erb(:index) #renders index view with @cities variable.
end

#the GET and POST request change the routes to named routes.

get "/cities/:name" do #Set up the handler for the GET /cities/:name route
  name    = params["name"] #assigns the params key name to the name variable
  @city = City.find_by(name) #loads the city with the name and assigns to the @city variable. Gives us an object or individual
  #record.
  halt erb(:show) #renders show view with the @city variable.
end


