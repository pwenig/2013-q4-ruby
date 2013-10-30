require './davinci-sinatra.rb'

get "/" do
  @lines = BraceletLine.order(:id)
  halt erb(:index)
end

get "/lines/:id" do
  id = params["id"]
  @line = BraceletLine.find(id)
  halt erb(:edit)
end

post "/lines/:id" do
  id           		 = params["id"]
  @line     	     = BraceletLine.find(id)
  @line.font_size	 = params["font_size"]
  @line.text		 = params["text"]
  @line.save!
redirect "/"
end
