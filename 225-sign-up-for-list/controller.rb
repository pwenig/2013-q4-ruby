require './davinci-sinatra.rb'

get "/" do
  redirect "/sign_up"
end

get "/sign_up" do
  halt erb(:sign_up)
end

post "/sign_up" do
  @participant = ListParticipant.new
  @participant.email = params["email"]
  @participant.save!

  redirect "/thank_you"
end

get "/thank_you" do
  halt erb(:thank_you)
end
