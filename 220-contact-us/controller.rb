require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

# TODO: write POST handler
