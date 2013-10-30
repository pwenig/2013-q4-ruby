require './davinci-sinatra.rb'

get "/" do
  @users = User.order(:id)
  halt erb(:index)
end

get "/new_user" do
	@user = User.new
  halt erb(:new)
end

post "/new_user" do
  @user            = User.new
  @user.email      = params["email"]
  @user.first_name = params["first_name"]
  @user.age        = params["age"]
  

  if @user.save == true
  redirect "/"
else
	halt erb(:new)
end

end
