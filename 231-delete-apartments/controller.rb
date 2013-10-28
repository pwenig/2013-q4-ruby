require "./davinci-sinatra.rb"

get "/" do
  @apartments = Apartment.all
  halt erb(:index)
end

# TODO: write GET handler to confirm deletion of the apartment

# TODO: write POST handler to actually delete the apartment
