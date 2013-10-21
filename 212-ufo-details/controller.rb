require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/listings/:id" do
	id= params[:id]
	@listing= UfoSighting.find(id)
	halt erb(:show)
end

