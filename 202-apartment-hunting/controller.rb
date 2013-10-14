require "./davinci-sinatra.rb"

get "/" do
  @apartments = Apartment.all
  halt erb(:index)
end
