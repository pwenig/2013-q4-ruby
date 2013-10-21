require './davinci-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/contact/form" do
	halt erb(:contact_form)
end

get "/form-in-table" do
	halt erb(:form_in_table)
end

get "/page/headers" do
	halt erb(:headers)
end

get "/inline.php" do
	halt erb(:inline)
end

get "/NestedLists.aspx" do
	halt erb(:nested_lists)
end

# TODO: add routes so that each of the links from the index view
# have a route that serves the correct .html.erb file, instead 
# of a 404 "empty stage" error
