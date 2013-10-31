require './davinci-sinatra.rb'

get "/" do
  halt erb(:enter_first)
end

post "/" do
  # TODO: If no one has that first name, show no_one.html.erb
  # TODO: If one person has that first name, show number.html.erb with
  #       their info.
  # TODO: If 2+ people have that first name, show choose.html.erb
  #       to let the user choose between the people with that first name.
end

get "/person/:first/:last" do
  # TODO: Show the info for the person with the first and last name
  #       specified in the route.
end
