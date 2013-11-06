
require './davinci-sinatra.rb'

get "/" do
  @stations = Station.order(:id)
  halt erb(:index)
end

get "/existing" do
  # TODO: Assign to @stations variable

  @stations = Station.where(status: "existing")
  halt erb(:index)
end

get "/private" do
  # TODO: Assign to @stations variable

  @stations = Station.where(property_type: "private")
  halt erb(:index)
end

get "/zip/:zip_code" do
  # TODO: Assign to @stations variable
  zip_code = params["zip_code"]
  @stations = Station.where(zip_code: zip_code)
  halt erb(:index)
end


get "/street/Broadway" do
  # TODO: Assign to @stations variable
  @stations = Station.where("station_address ilike ?", "%broadway%")
  halt erb(:index)
end

get "/street/17th" do
  # TODO: Assign to @stations variable
  @stations = Station.where("station_address ilike ?", "%17%")
  halt erb(:index)
end
