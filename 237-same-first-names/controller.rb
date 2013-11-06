require './davinci-sinatra.rb'

get "/" do #Set up handler for the GET / route
  halt erb(:enter_first) #render the view enter_first
end

# TODO: If no one has that first name, show no_one.html.erb
  # TODO: If one person has that first name, show number.html.erb with
  #       their info.
  # TODO: If 2+ people have that first name, show choose.html.erb
  #       to let the user choose between the people with that first name.

post "/" do # Set up handler for the POST / route
  first_name = params["first_name"] # assign and save the POSTed first_name to a variable named first_name.
  people = Person.where(first_name: first_name) # load rows from Persons table with the first_name values matching the contents
  #of the variable first_name and saves it to the variable people.
  if people.size == 0 # to determine the number of people with the same first_name, a size method is called
    #on Active Record relation variable, people. If people.size equals 0, the the no_one view is rendered and the handler stops. 
    #If people.size doesn't equal 0, the next line of code is executed.
    halt erb(:no_one)
  elsif people.size > 1 # if the people.size equals more then 1, then we create the instancer variable @people
    # so the choose view can be rendered with the first_name and last_name of the rows in @people
    @people = people  
    halt erb(:choose) # renders the choose view with the @people variables and stops.
  else #if people.size is less then 1 (but not equal to 0)
    @person = Person.find_by(first_name: first_name) # Load the row of Persons with a first_name value matching the 
    #contents of the variable first_name and save this to the @person variable
    halt erb(:number) #render the number view with the @person variable.
  end #ends the if statement
end #ends the post handler block



# TODO: Show the info for the person with the first and last name
  # specified in the route.

get "/person/:first/:last" do #Set up a handler for the GET /person/:first/:last route
  first = params["first"] #take the wildcard named first from the matched route and save it to the variable
  #named first.
  last = params["last"] #take the wildcard named last from the matched route and save it to the variable
  #named last. 
  @person = Person.find_by(first_name: first, last_name: last) #Load the Person row that has a first_name value matching 
  #the contents of the first variable and a last_name value matching the contents of the last variable and save it to the @person variable.
  halt erb(:number) #rendering the number view and using the @person variable
end #ends the Get handler block












