require './davinci-sinatra.rb'

get "/" do
  @languages = Language.order(:id)
  halt erb(:index)
end

get "/new_language" do
  @language = Language.new
  halt erb(:edit)
end

post "/new_language" do
	@language 						= Language.new
	@language.name 					= params["name"]
	@language.num_speakers			= params["num_speakers"]
	@language.language_family_id 	= params["language_family_id"]
	@language.main_script 			= params["main_script"]
	@language.has_arabic_script 	= params["has_arabic_script"]
	@language.save!
	redirect "/"
end


get "/languages/:id" do
  id         = params["id"]
  @language  = Language.find(id)
  halt erb(:edit)
end

post "/languages/:id" do
	id 								= params["id"]
	@language 						= Language.find(id)
	@language.name 					= params["name"]
	@language.num_speakers 			= params["num_speakers"]
	@language.language_family_id 	= params["language_family_id"]
	@language.main_script 			= params["main_script"]
	@language.has_arabic_script 	= params["has_arabic_script"]
	@language.save!
	redirect "/"
end



