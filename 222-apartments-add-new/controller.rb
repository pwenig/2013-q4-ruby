require './davinci-sinatra.rb'

get "/" do
  @apartments = Apartment.all
  halt erb(:index)
end

post "/" do
  @apartment                 = Apartment.new
  @apartment.address         = params["address"]
  @apartment.rent_per_month  = params["rent_per_month"]
  @apartment.does_allow_pets = params["does_allow_pets"]
  @apartment.url             = params["url"]
  @apartment.save!
  redirect "/"
end
