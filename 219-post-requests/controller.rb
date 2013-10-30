require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

post "/" do 
	e = Element.new
	e.name = "Oxygen" 
	e.number = 8
	e.symbol = "O"
	e.save!
	redirect "/"
end

get "/elements/:id" do
  id = params[:id]
  @element = Element.find(id)
  halt erb(:show)
end


