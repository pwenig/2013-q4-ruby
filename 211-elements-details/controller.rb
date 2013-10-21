require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/elements/:id" do
	id = params[:id]
	@element = Element.find(id)
	halt erb(:show)
end

