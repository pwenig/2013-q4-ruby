require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/elements/:id" do
  id = params[:id]
  @element = Element.find(id)
  raise @element.inspect
  halt erb(:show_element)
end

get "/create_element" do
	n = Element.new
	n.name = "Magnesium"
	n.number = 25
	n.symbol = "P"
	n.save!
	halt erb(:index)
end

 


get "/double_paris_pop" do
	paris = WorldCity.find(2)
	paris.population_in_millions = paris.population_in_millions * 2
	paris.save!
	halt erb(:index)

end



get "/cities/:id" do
  id = params[:id]
  @city = WorldCity.find(id)
  halt erb(:show_city)

end
