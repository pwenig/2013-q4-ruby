require './davinci-sinatra.rb'

get "/" do
  @members = Member.order(:name)
  halt erb(:index)
end
