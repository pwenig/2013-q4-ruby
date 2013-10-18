require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

# TODO: write handler for detail pages route
