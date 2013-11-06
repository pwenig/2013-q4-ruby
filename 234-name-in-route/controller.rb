require './davinci-sinatra.rb'

get "/" do
  @entries = EncyclopediaEntry.order(:word)
  halt erb(:index)
end

# TODO: write GET handler to serve show.html.erb with @entry set

get "/:id" do
	bird = params[:id]
	@entry = EncyclopediaEntry.find_by(word: bird)
	halt erb(:show)
end


# to the correct Encyclopedia Entry for routes like /albatross 
# and /jay
