require './davinci-sinatra.rb'

get "/" do
  @users = User.order(:id)
  halt erb(:index)
end

get "/new_user" do
  halt erb(:new)
end

post "/new_user" do
  user            = User.new
  user.email      = params["email"]
  user.first_name = params["first_name"]
  user.age        = params["age"]
  user.save!
  redirect "/"
end
