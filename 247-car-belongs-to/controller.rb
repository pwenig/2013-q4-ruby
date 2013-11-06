require './davinci-sinatra.rb'

get "/" do
  @cars = Car.order(:id)
  halt erb(:index)
end
