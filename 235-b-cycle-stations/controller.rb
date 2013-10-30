require './davinci-sinatra.rb'

get "/" do
  @stations = Station.order(:id)
  halt erb(:index)
end

get "/existing" do
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/private" do
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/zip/:zip_code" do
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/street/Broadway" do
  # TODO: Assign to @stations variable
  halt erb(:index)
end

get "/street/17th" do
  # TODO: Assign to @stations variable
  halt erb(:index)
end
