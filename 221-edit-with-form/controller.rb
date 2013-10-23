require './davinci-sinatra.rb'

get "/" do
  @patients = Patient.order(:id)
  halt erb(:index)
end

get "/patients/:id" do
  id       = params["id"]
  @patient = Patient.find(id)
  halt erb(:edit)
end

# TODO: write POST handler
