require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

# TODO: add routes so that each of the links from the index view
# have a route that serves the correct .html.erb file, instead 
# of a 404 "empty stage" error
